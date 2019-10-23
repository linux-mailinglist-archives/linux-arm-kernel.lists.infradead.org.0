Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1F5E1137
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 06:51:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0iKCxaKYOo15+OUNq2wxwdd+CrwIoIvdDGs93HVhUqw=; b=d6/NNgMuZqaG41
	/Mrp66bzFxmqMgqcSk8Kq8iiWeZp3P4nJKAF+oCiei5wrPNwFHu9E86+FwLyuBWVZl7xlxcSSFqmF
	GmeXBgqoRYvuv01qSjBRkFypa6exES+CylAIr4LBk4/qHlMzVPxTO4XjHJbPJS4FjakOYCNfzO2pz
	2eQlM85x6c/T9rDRpqlFLmRBV2F/aQwOa59WsZWfzxXGsvFVTz2sgX/1MXSm2xjUduBOPHzTu27RD
	14MeYjBfuv5V9vkbjVjWRQyGZv2vGAgUsDVefEJxzfAqC+T7JsxnriknYrAnSzOOPeDthYZeSuZe1
	ElJjIuqmqTNGKiysoaMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8c8-0007Cr-MP; Wed, 23 Oct 2019 04:51:16 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8bz-0007C9-81
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 04:51:08 +0000
Received: by mail-io1-xd44.google.com with SMTP id i26so14002590iog.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 21:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=OKxxrxrRmQ9OEs+TDHwbhEPuOlHTRldEW91bPkMwe+Q=;
 b=IRpEwZZlH/NAmDOc3Du/eDq/g+6Akr2uQN+kUqqLGi0wZTRTzWoKAPqu9spG3AFt5C
 5juvxtVr6WBPWT4HaSsFXNSytOWs1BOd59LjkzyUNpWOBrwfcifGhbnB+sfIYJuXCIq1
 1l/3l5qvC3626rlS1xRPCcTwJ9+ksmo3D3b4kcW9+Kf8x8HL60Ojp/8024pg0XDqINi+
 VXXoKRVxuItscwoVyM8fjc8FlpWMmw+ydN4eD83AxEKSaQumjs/101MqmW9BgSMvVFbW
 fbTb0EQHTQpxT12fe4hi3g18dPuawSTN8ZIclIeRxsy3xxiW9vNf8gTGSlVbbcb9sGCm
 rqnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=OKxxrxrRmQ9OEs+TDHwbhEPuOlHTRldEW91bPkMwe+Q=;
 b=pAXcgSBgCww+gG6+epA6Tmb/bWcaYQN3DrYk50og9TVQBzhOGP4dTIWQfmjPCbfpgj
 BG7m7sEJEw1vCtF4NsjgjELz94v+cpPrSkyE87e4M/qrq/MuweMezh0lm8gpYGOcWbv8
 soKZr0B3fNutq5xw67Oles+iOb94VK9drmNByV67Hq2Ke6DOcmDtIc3kdiUDt451lT+b
 etG+VCaIVXT7PHDvvttfbDA/c4+aC00Ycs92barzNUwqsZTVRoAnwNOtXlL6/ENXj5/Y
 h2ocweOks9uw3b2L/0Qw6vPCOomf0iqTQ+6UTcowpbBjueKZWjeA+Ho/2ELj2k4GpCHD
 yvTA==
X-Gm-Message-State: APjAAAWjX8iCEI0VnJkpigvUYUO15u/pXFaCxt8Aa8LmYPgcsaDQsv+N
 R6YZxp2Jqh2EF2NYgi9bfAYCvyIbKoCcF3TLKQw=
X-Google-Smtp-Source: APXvYqzE3Bfo7kvQ7+hwzW34J5gf2Zonf08iEAJCaNyVdJIDx3jMMth3umOadUschVo/Fh/wlZsrQzPbyY+oaHCxDHs=
X-Received: by 2002:a05:6638:632:: with SMTP id
 h18mr7358032jar.107.1571806266511; 
 Tue, 22 Oct 2019 21:51:06 -0700 (PDT)
MIME-Version: 1.0
References: <20191021201848.4231-1-navid.emamdoost@gmail.com>
 <fb5d5331-9a89-8370-1e61-396dd05f291a@web.de>
 <2a6cdb63-397b-280a-7379-740e8f43ddf6@xilinx.com>
In-Reply-To: <2a6cdb63-397b-280a-7379-740e8f43ddf6@xilinx.com>
From: Navid Emamdoost <navid.emamdoost@gmail.com>
Date: Tue, 22 Oct 2019 23:50:55 -0500
Message-ID: <CAEkB2ES=S64T9FH8bSj=muXD3hSXc3-MWEVt_0sggoTdZFQswg@mail.gmail.com>
Subject: Re: [PATCH] clocksource/drivers: Fix memory leak in
 ttc_setup_clockevent
To: Michal Simek <michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_215107_312377_F95DAFE4 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel-janitors@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kangjie Lu <kjlu@umn.edu>, LKML <linux-kernel@vger.kernel.org>,
 Navid Emamdoost <emamd001@umn.edu>, Markus Elfring <Markus.Elfring@web.de>,
 Stephen McCamant <smccaman@umn.edu>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhhbmtzIGZvciB0aGUgZmVlZGJhY2ssIEkgdXBkYXRlZCB0aGlzIHBhdGNoIGFuZCBzZW50IHYy
LgpBbHNvLCBJIHN1Ym1pdHRlZCBhIHBhdGNoIHRvIGZpeCB0aGUgZXJyb3IgaGFuZGxpbmcgcGF0
aCBpbgp0dGNfc2V0dXBfY2xvY2tzb3VyY2UoKS4gSGVyZSBpcyB0aGUgbGluayB0byBpdDoKaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3BhdGNoLzExNDMyNDIvCgpPbiBUdWUsIE9j
dCAyMiwgMjAxOSBhdCAzOjUxIEFNIE1pY2hhbCBTaW1layA8bWljaGFsLnNpbWVrQHhpbGlueC5j
b20+IHdyb3RlOgo+Cj4gT24gMjIuIDEwLiAxOSAxMDoyNiwgTWFya3VzIEVsZnJpbmcgd3JvdGU6
Cj4gPj4gSW4gdGhlIGltcGVsZW1lbnRhdGlvbiBvZiB0dGNfc2V0dXBfY2xvY2tldmVudCgpIHRo
ZSBhbGxvY2F0ZWQgbWVtb3J5Cj4gPj4gZm9yIHR0Y2NlIHNob3VsZCBiZSByZWxlYXNlZCBpZiBj
bGtfbm90aWZpZXJfcmVnaXN0ZXIoKSBmYWlscy4KPiA+Cj4gPiAqIFBsZWFzZSBhdm9pZCB0aGUg
Y29weWluZyBvZiB0eXBvcyBmcm9tIHByZXZpb3VzIGNoYW5nZSBkZXNjcmlwdGlvbnMuCj4gPgo+
ID4gKiBVbmRlciB3aGljaCBjaXJjdW1zdGFuY2VzIHdpbGwgYW4g4oCcaW1wZXJhdGl2ZSBtb29k
4oCdIG1hdHRlciBmb3IgeW91IGhlcmU/Cj4gPiAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHVi
L3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL0RvY3VtZW50YXRp
b24vcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMucnN0P2lkPTdkMTk0YzIxMDBhZDJhNmRkZWQ1
NDU4ODdkMDI3NTQ5NDhjYTUyNDEjbjE1MQo+ID4KPiA+Cj4gPj4gKysrIGIvZHJpdmVycy9jbG9j
a3NvdXJjZS90aW1lci1jYWRlbmNlLXR0Yy5jCj4gPj4gQEAgLTQyNCw2ICs0MjQsNyBAQCBzdGF0
aWMgaW50IF9faW5pdCB0dGNfc2V0dXBfY2xvY2tldmVudChzdHJ1Y3QgY2xrICpjbGssCj4gPj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJnR0Y2NlLT50dGMuY2xrX3JhdGVfY2hh
bmdlX25iKTsKPiA+PiAgICAgIGlmIChlcnIpIHsKPiA+PiAgICAgICAgICAgICAgcHJfd2Fybigi
VW5hYmxlIHRvIHJlZ2lzdGVyIGNsb2NrIG5vdGlmaWVyLlxuIik7Cj4gPj4gKyAgICAgICAgICAg
IGtmcmVlKHR0Y2NlKTsKPiA+PiAgICAgICAgICAgICAgcmV0dXJuIGVycjsKPiA+PiAgICAgIH0K
PiA+Cj4gPiBUaGlzIGFkZGl0aW9uIGxvb2tzIGNvcnJlY3QuCj4gPiBCdXQgSSB3b3VsZCBwcmVm
ZXIgdG8gbW92ZSBzdWNoIGV4Y2VwdGlvbiBoYW5kbGluZyBjb2RlIHRvIHRoZSBlbmQgb2YKPiA+
IHRoaXMgZnVuY3Rpb24gaW1wbGVtZW50YXRpb24gc28gdGhhdCBkdXBsaWNhdGUgc291cmNlIGNv
ZGUgd2lsbCBiZSByZWR1Y2VkLgo+ID4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xp
bnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvRG9jdW1lbnRhdGlvbi9wcm9j
ZXNzL2NvZGluZy1zdHlsZS5yc3Q/aWQ9N2QxOTRjMjEwMGFkMmE2ZGRlZDU0NTg4N2QwMjc1NDk0
OGNhNTI0MSNuNDUwCj4KPiBKdXN0IGEgbm90ZS4gTWF5YmUgeW91IHNob3VsZCBhbHNvIGNvbnNp
ZGVyIHRvIGZpeCB0aGlzIGVycm9yIHBhdGggaW4KPiB0dGNfc2V0dXBfY2xvY2tzb3VyY2UoKSB3
aGVuIG5vdGlmaWVyIGFsc28gY2FuIGZhaWwgdGhhdCB0aGVyZSBpcyBubwo+IG5lZWQgdG8gY29u
dGludWUgd2l0aCBjb2RlIGV4ZWN1dGlvbi4KPgo+IFRoYW5rcywKPiBNaWNoYWwKCgoKLS0gCk5h
dmlkLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
