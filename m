Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8ED91EC3DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 22:42:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0Pp9Iyf7pRQgwSJdBmtYbhnTsePTZaKmAjr6CwgSmA=; b=LFjuMbHzPcDDTt
	6H9UDM96fY1vU/TXBOgtkUSXUhZ6mvXqWqXb25n2L9SeBF9FcjxdEYh1BHWUNb8Z98TvOToolIIJx
	n7yE86X6fuxyA0YiG09RErMSeWeQG32yJitSfjKOK8nmF76e1gRT2ZXKTNnrToF4eA9seN5NTTCQ+
	MXssaly48HuYnuoyTLjPRnCGbWC4bM0F5TzfsfTSYCeWBK1tYzfRmq2sRH3MPSqtUi0q4oPNSgSRE
	aypKfv2vlQxaLc0yzYn+L7eZnfnnanvXbhjPI9/QFckvxpxbSv4oLsMul16Jwk413jJLQPmVa6fe2
	eEj9mbyEqqOykyxXgchA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgDjr-0008OT-4F; Tue, 02 Jun 2020 20:42:23 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgDjj-0008NS-IY
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 20:42:16 +0000
Received: from unknown (HELO ironmsg-SD-alpha.qualcomm.com) ([10.53.140.30])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 02 Jun 2020 13:42:12 -0700
Received: from gurus-linux.qualcomm.com ([10.46.162.81])
 by ironmsg-SD-alpha.qualcomm.com with ESMTP; 02 Jun 2020 13:42:12 -0700
Received: by gurus-linux.qualcomm.com (Postfix, from userid 383780)
 id 478804DE5; Tue,  2 Jun 2020 13:42:12 -0700 (PDT)
Date: Tue, 2 Jun 2020 13:42:12 -0700
From: Guru Das Srinagesh <gurus@codeaurora.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH] pwm: imx27: Fix rounding behavior
Message-ID: <20200602204211.GA1693@codeaurora.org>
References: <20200416080245.3203-1-u.kleine-koenig@pengutronix.de>
 <20200602124835.GF3360525@ulmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602124835.GF3360525@ulmo>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_134215_637244_148F58F3 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [199.106.114.39 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-pwm@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gMDIsIDIwMjAgYXQgMDI6NDg6MzVQTSArMDIwMCwgVGhpZXJyeSBSZWRpbmcg
d3JvdGU6Cj4gT24gVGh1LCBBcHIgMTYsIDIwMjAgYXQgMTA6MDI6NDVBTSArMDIwMCwgVXdlIEts
ZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gPiBUbyBub3QgdHJpZ2dlciB0aGUgd2FybmluZ3MgcHJvdmlk
ZWQgYnkgQ09ORklHX1BXTV9ERUJVRwo+ID4gCj4gPiAgLSB1c2UgdXAtcm91bmRpbmcgaW4gLmdl
dF9zdGF0ZSgpCj4gPiAgLSBkb24ndCBkaXZpZGUgYnkgdGhlIHJlc3VsdCBvZiBhIGRpdmlzaW9u
Cj4gPiAgLSBkb24ndCB1c2UgdGhlIHJvdW5kZWQgY291bnRlciB2YWx1ZSBmb3IgdGhlIHBlcmlv
ZCBsZW5ndGggdG8gY2FsY3VsYXRlCj4gPiAgICB0aGUgY291bnRlciB2YWx1ZSBmb3IgdGhlIGR1
dHkgY3ljbGUKPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xl
aW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvcHdtL3B3bS1p
bXgyNy5jIHwgMjAgKysrKysrKysrKy0tLS0tLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTAg
aW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4gCj4gQXBwbGllZCwgdGhhbmtzLgo+IAo+
IFRoaWVycnkKCkhpIFRoaWVycnksCgpKdXN0IEZZSSwgVGhpcyBjaGFuZ2UgY29uZmxpY3RzIHdp
dGggb25lIG9mIG15IHBhdGNoZXMgWzFdIGluIHRoZSAiQ29udmVydApQV00gcGVyaW9kIGFuZCBk
dXR5IGN5Y2xlIHRvIHU2NCIgc2VyaWVzLgoKWzFdOiBodHRwczovL3BhdGNod29yay5vemxhYnMu
b3JnL3Byb2plY3QvbGludXgtcHdtL3BhdGNoLzg0ODQ5NDcyNWZkMTI0MGVkODc3ZDBhMTQ3MWRk
MTFjY2VhMDFmZjUuMTU5MDUxNDMzMS5naXQuZ3VydXNAY29kZWF1cm9yYS5vcmcvCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
