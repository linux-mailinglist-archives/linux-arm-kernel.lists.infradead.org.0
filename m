Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3605A10F2BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 23:15:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eqvQ39C0EPgHSZHJ6yFsv2UwyNKYz8VzhewphqBtb3s=; b=qiKbosFT+pjqu+
	pTbB6iwohVDKZcjpMgY4t3sTCJfsjhzivDwxlR7XmaqW1lA1IWGmW/WSroN3WewknZbhLMUwoE+vR
	mADFwFQw/31wFm5HJFQDXh+wwX/UK1ootXg+cPVS9CmpD5OPnm5GcuG8C4CoNveVPULgHvWc5hlPL
	HFVnmg5+aLSXFs7n3I+b4fq/ldgv5RFsbxJUFTU1EVxCvQMDXRubiLlEq+RBcf7JX1mPNm2m8spY+
	7I2Klb5s6znLpsDp5V6PuyVwA0ENYRIoVzaifNNnMOp0QrDBb4sagjmXesjhqKLSOMBAONpRmPB4p
	KSLgmErngpBp7AuzMr4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibtyn-00045J-Jd; Mon, 02 Dec 2019 22:15:41 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibtyd-00044e-RC
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 22:15:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=87DJGgaOP4OR26er35jT2d/3xlEOtUkjxl/DEu2Hv4A=; b=hJ2jxg0GQjdVMV90G3GTon9LzP
 71+pbAIhRDz3VxHs5UvWw2oSaW56+b3e9zgmTUTcandElA+kNrbzsnGSsp9BNhIcjj/b9y0gS2U5y
 86W+CopAbhsHmyZresdzs0aZ4nRuxZyZc6L6WiVP30w3R1dqcc6NTv1USIjxt/xdoCN8=;
Received: from p200300ccff066f001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff06:6f00:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1ibtyV-0008V1-Oz; Mon, 02 Dec 2019 23:15:24 +0100
Date: Mon, 2 Dec 2019 23:15:22 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH] ARM: OMAP2+: Fix warnings with broken
 omap2_set_init_voltage()
Message-ID: <20191202231522.5e7fe3f8@aktux>
In-Reply-To: <8FFD44DB-73F8-4807-91E1-C97DA8F781BA@goldelico.com>
References: <20190924233222.52757-1-tony@atomide.com>
 <8FFD44DB-73F8-4807-91E1-C97DA8F781BA@goldelico.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_141532_179497_9A483121 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nishanth Menon <nm@ti.com>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Tony Lindgren <tony@atomide.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, =?UTF-8?B?QW5kcsOp?= Roth <neolynx@gmail.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <aford173@gmail.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyIERlYyAyMDE5IDIyOjA5OjI2ICswMTAwCiJILiBOaWtvbGF1cyBTY2hhbGxlciIg
PGhuc0Bnb2xkZWxpY28uY29tPiB3cm90ZToKCj4gSGkgVG9ueSwKPiAKPiA+IEFtIDI1LjA5LjIw
MTkgdW0gMDE6MzIgc2NocmllYiBUb255IExpbmRncmVuIDx0b255QGF0b21pZGUuY29tPjoKPiA+
IAo+ID4gVGhpcyBjb2RlIGlzIGN1cnJlbnRseSB1bmFibGUgdG8gZmluZCB0aGUgZHRzIG9wcCB0
YWJsZXMgYXMgdGktY3B1ZnJlcQo+ID4gbmVlZHMgdG8gc2V0IHRoZW0gdXAgZmlyc3QgYmFzZWQg
b24gc3BlZWQgYmlubmluZy4KPiA+IAo+ID4gV2Ugc3RvcHBlZCBpbml0aWFsaXppbmcgdGhlIG9w
cCB0YWJsZXMgd2l0aCBwbGF0Zm9ybSBjb2RlIHllYXJzIGFnbyBmb3IKPiA+IGRldmljZSB0cmVl
IGJhc2VkIGJvb3Rpbmcgd2l0aCBjb21taXQgOTJkNTE4NTZkNzQwICgiQVJNOiBPTUFQMys6IGRv
IG5vdAo+ID4gcmVnaXN0ZXIgbm9uLWR0IE9QUCB0YWJsZXMgZm9yIGRldmljZSB0cmVlIGJvb3Qi
KSwgYW5kIGFsbCBvZiBtYWNoLW9tYXAyCj4gPiBpcyBub3cgYm9vdGluZyB1c2luZyBkZXZpY2Ug
dHJlZS4KPiA+IAo+ID4gV2UgY3VycmVudGx5IGdldCB0aGUgZm9sbG93aW5nIGVycm9ycyBvbiBp
bml0Ogo+ID4gCj4gPiBvbWFwMl9zZXRfaW5pdF92b2x0YWdlOiB1bmFibGUgdG8gZmluZCBib290
IHVwIE9QUCBmb3IgdmRkX21wdQo+ID4gb21hcDJfc2V0X2luaXRfdm9sdGFnZTogdW5hYmxlIHRv
IHNldCB2ZGRfbXB1Cj4gPiBvbWFwMl9zZXRfaW5pdF92b2x0YWdlOiB1bmFibGUgdG8gZmluZCBi
b290IHVwIE9QUCBmb3IgdmRkX2NvcmUKPiA+IG9tYXAyX3NldF9pbml0X3ZvbHRhZ2U6IHVuYWJs
ZSB0byBzZXQgdmRkX2NvcmUKPiA+IG9tYXAyX3NldF9pbml0X3ZvbHRhZ2U6IHVuYWJsZSB0byBm
aW5kIGJvb3QgdXAgT1BQIGZvciB2ZGRfaXZhCj4gPiBvbWFwMl9zZXRfaW5pdF92b2x0YWdlOiB1
bmFibGUgdG8gc2V0IHZkZF9pdmEKPiA+IAo+ID4gTGV0J3MganVzdCBkcm9wIHRoZSB1bnVzZWQg
Y29kZS4gTm93YWRheXMgdGktY3B1ZnJlcSBzaG91bGQgYmUgdXNlZCB0bwo+ID4gdG8gaW5pdGlh
bGl6ZSB0aGluZ3MgcHJvcGVybHkuCj4gPiAKPiA+IENjOiBBZGFtIEZvcmQgPGFmb3JkMTczQGdt
YWlsLmNvbT4KPiA+IENjOiBBbmRyw6kgUm90aCA8bmVvbHlueEBnbWFpbC5jb20+Cj4gPiBDYzog
IkguIE5pa29sYXVzIFNjaGFsbGVyIiA8aG5zQGdvbGRlbGljby5jb20+Cj4gPiBDYzogTmlzaGFu
dGggTWVub24gPG5tQHRpLmNvbT4KPiA+IENjOiBUZXJvIEtyaXN0byA8dC1rcmlzdG9AdGkuY29t
Pgo+ID4gU2lnbmVkLW9mZi1ieTogVG9ueSBMaW5kZ3JlbiA8dG9ueUBhdG9taWRlLmNvbT4KPiA+
IC0tLQo+ID4gCj4gPiBHdXlzLCBwbGVhc2UgY2hlY2sgYW5kIGFjayBpZiB3ZSBjYW4gcmVhbGx5
IGRvIHRoaXMgdG8gZ2V0IHJpZCBvZiBzb21lCj4gPiBwb2ludGxlc3MgZG1lc2cgLWwzIGVycm9y
cyB3aXRob3V0IGFmZmVjdGluZyB0aGUgb25nb2luZyBjcHVmcmVxIGFuZAo+ID4gdm9sdGFnZSB3
b3JrLiAgCj4gCj4gdW5mb3J0dW5hdGVseSB3ZSBkaWQgbm90IHlldCB0ZXN0IGluIGNvbWJpbmF0
aW9uIHdpdGggdGhlIDFHSHogT1BQCj4gcGF0Y2hlcyBmb3Igb21hcDM2MzAgKHF1ZXVlZCBmb3Ig
djUuNS1yYzEpIGFuZCBpdCBhcHBlYXJzIHRoYXQgdGhpcwo+IHBhdGNoIGJyZWFrcyB0aGUgMUdI
eiBPUFAuCj4gCj4gVGhlIHN5bXB0b20gaXMgdGhhdCBpdCB3b3JrcyBmaW5lIG9uIGEgZG0zNzMw
IHdpdGggODAwTUh6IHJhdGluZwo+IGJ1dCByZXN1bHRzIGluIHNwdXJpb3VzIGtlcm5lbCBwYW5p
Y3MsIHN0YWNrIGNvcnJ1cHRpb24sIHZpcnR1YWwgbWVtb3J5Cj4gZmFpbHVyZXMsIE9uZU5BTkQg
RE1BIHRpbWVvdXRzIGV0Yy4gb24gYSBkbTM3MzAgd2l0aCAxR0h6IHNwZWVkIGdyYWRlLgo+IApJ
ICNpZiAwJ2VkIHRoZSAxR2h6IG9wcCBhbmQgZm91bmQgb3V0IHRoYXQgdGhlIE9uZU5BTkQgRE1B
IHRpbWVvdXRzCmFyZSBpbmRlcGVuZGFudCBvZiAxR2h6LiBCdXQgdGhlIHJlc3VsdCBpcyBpbnRl
cmVzdGluZzoKV2l0aCB0aGlzIHBhdGNoCnh4ZCAvZGV2L210ZDAgc2hvd3Mgb25seSBmZgp3aXRo
b3V0IHRoaXMgcGF0Y2ggZ2l2ZXMgY29udGVudCwgaXQgaXMgc2xvd2VyLgpJbiBib3RoIGNhc2Vz
IEkgc2VlClsgIDQ3Ni41MzM0NzddIG9tYXAyLW9uZW5hbmQgNDAwMDAwMC5vbmVuYW5kOiB0aW1l
b3V0IHdhaXRpbmcgZm9yIERNQQoKUmVnYXJkcywKQW5kcmVhcwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
