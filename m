Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3421344D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 15:20:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NowW36Ik/AkJYE/sbfKQilSZxvAcAovtEQIGYDYLy9A=; b=ChldifEuDdFcXO
	p8efn+PqAImNXX+jAkCLzjvdyHpd5r8KqhHhK50Wp2ujwydMbbLOIYPNahckviqvBykId/VHR8K0E
	p1kSPmtUeHUMg5CGvulQ1Yd81zzF+7r2s8JSk1JMcpFr6aezj6KfV3eQTtislPYg73wKS2iAR90Bl
	er/o9oTGDAHtdFUtbr7aPGNTNTC0aYD8dJS/DHAlEjQDujPXW/cs+71ue0lUZQ43t7Bw/1yUG9o0z
	dFgwbqG3uBdaLqa25CRp0yZ+GLPIiXrFrw8lgXUF8TKz20UcM9vqP/ZJbQ7k9yY1vH+dzSaaMVx+/
	PlIjZNeGyrog+nj2bAKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipCCS-0006G5-OK; Wed, 08 Jan 2020 14:20:44 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipCCL-0006F4-Q1
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 14:20:39 +0000
Received: by mail-wr1-x443.google.com with SMTP id j42so3498215wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 06:20:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UNEVB0IbcLubIcT7KASuWF617xfGG+pPUETe7tDmmuw=;
 b=DA+TRyMm0KdyEb4fLOrfBWsgpvoL9TKJ1ThoqOWM7OQfVXExWS+/gOgbfXHahqt6q1
 X85IAnRmo2S5bYVvTUuHZ8wAp+QDmzCq8ratpkKSHB5M5D5GHsHsqoGjefsavgROKxuN
 WYJEF1M1kKCTBNCL9tsnEINUDkTZqS924W1hit7XVaq3Ns7r80bW0XbYzeNOBC7XzAS6
 kyVBoGSyFDoCvxcLaTrhXo/IfzGMLG5Kj1tof0/dWr7bcCMTSKcbEZ/Kxch7tAoFPGmE
 zZ55UebtQ6ByOXs9BSgpp4+rThqUVl+YMAhlMogp6uzYoLLUVtrOXMIfw7pNBcVnyIWa
 l1nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UNEVB0IbcLubIcT7KASuWF617xfGG+pPUETe7tDmmuw=;
 b=FIFJch4x5nAeHXETax38NHMZXVy1Y4Bds7htZkXCNqUUwb+qNCqfqdfeUz/mJps5Sa
 k9Y/kJYzwX7KaeC7Y/tLOuz0YnSkiHHwJh0IysHAq+VD7LC/m+6INMfOnayBD+mQzRxG
 TP6kbulnhHBePzJhqFQTSIujQZU6XPh+gWgRAHG14DY2kYyJiljyrNO7T6t+KHyRBdr9
 dSoxBzkS8kpGZlTVp/MwulKveVSSGbn7BRGBMkbluADwpTTz7i2FVqanXfm1ZrtZ6ILR
 fft0e+bvUE9nom0Yw25ZtkV8sodTnHtTGfNxmMBdl3vznMChcQl4FI0u3nJf7ttMu8oG
 6V8g==
X-Gm-Message-State: APjAAAW/O4YvPbGppZRtEZjfMhbu8AMOwSd1NzhsqcD5s8XGKtsFxzAt
 JrqhUu+NwATnP9ATya3AiWLnyMgdFEX8/shWb5885Q==
X-Google-Smtp-Source: APXvYqw0BEmAIR/kDvuo7EWWRYEiMT/Z/muqEccIZHzlByYud6Aq2jOCKpVAw8xwH84vX/zCIW/OP+bEQWBlmZuGz7U=
X-Received: by 2002:a5d:44cd:: with SMTP id z13mr4943064wrr.104.1578493235547; 
 Wed, 08 Jan 2020 06:20:35 -0800 (PST)
MIME-Version: 1.0
References: <20f6ae784e058aaa136a61456fe4784330255ce5.1571828230.git.michal.simek@xilinx.com>
In-Reply-To: <20f6ae784e058aaa136a61456fe4784330255ce5.1571828230.git.michal.simek@xilinx.com>
From: Michal Simek <monstr@monstr.eu>
Date: Wed, 8 Jan 2020 15:20:24 +0100
Message-ID: <CAHTX3dLpGhOxxX1++GKq-U1Emd01R=iuqm9uMgicjmEhjRg-3Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: zynq: use physical cpuid in zynq_slcr_cpu_stop/start
To: LKML <linux-kernel@vger.kernel.org>, Michal Simek <monstr@monstr.eu>,
 git <git@xilinx.com>, Quanyang Wang <quanyang.wang@windriver.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_062037_844085_9F18C1CA 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Russell King <linux@armlinux.org.uk>,
 linux-arm <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

c3QgMjMuIDEwLiAyMDE5IHYgMTI6NTcgb2Rlc8OtbGF0ZWwgTWljaGFsIFNpbWVrCjxtaWNoYWwu
c2ltZWtAeGlsaW54LmNvbT4gbmFwc2FsOgo+Cj4gRnJvbTogUXVhbnlhbmcgV2FuZyA8cXVhbnlh
bmcud2FuZ0B3aW5kcml2ZXIuY29tPgo+Cj4gV2hlbiBrZXJuZWwgYm9vdGluZywgaXQgd2lsbCBj
cmVhdGUgYSBjcHVpZCBtYXAgYmV0d2VlbiB0aGUgbG9naWNhbCBjcHVzCj4gYW5kIHBoeXNpY2Fs
IGNwdXMuIEluIGEgbm9ybWFsIGJvb3QsIHRoZSBjcHVpZCBtYXAgaXMgYXMgYmVsb3c6Cj4KPiAg
ICAgUGh5c2ljYWwgICAgICBMb2dpY2FsCj4gICAgICAgICAwICAgID09PiAgICAgMAo+ICAgICAg
ICAgMSAgICA9PT4gICAgIDEKPgo+IEJ1dCBpbiBrZHVtcCwgdGhlcmUgaXMgYSBjb25kaXRpb24g
dGhhdCB0aGUgY3Jhc2ggaGFwcGVucyBhdCB0aGUKPiBwaHlzaWNhbCBjcHUxLCBhbmQgdGhlIGNy
YXNoIGtlcm5lbCB3aWxsIHJ1biBhdCB0aGUgcGh5c2ljYWwgY3B1MSB0b28sCj4gc28gdGhlIGNw
dWlkIG1hcCBpbiBjcmFzaCBrZXJuZWwgaXMgYXMgYmVsb3c6Cj4KPiAgICAgUGh5c2ljYWwgICAg
ICBMb2dpY2FsCj4gICAgICAgICAxICAgID09PiAgICAgMAo+ICAgICAgICAgMCAgICA9PT4gICAg
IDEKPgo+IFRoZSBmdW5jdGlvbnMgenlucV9zbGNyX2NwdV9zdG9wL3N0YXJ0IGlzIHRvIHN0b3Av
c3RhcnQgdGhlIHBoeXNpY2FsCj4gY3B1cywgdGhlIHBhcmFtZXRlciBjcHUgc2hvdWxkIGJlIHRo
ZSBwaHlzaWNhbCBjcHVpZC4gU28gdXNlCj4gY3B1X2xvZ2ljYWxfbWFwIHRvIHRyYW5zbGF0ZSB0
aGUgbG9naWNhbCBjcHVpZCB0byBwaHlzaWNhbCBjcHVpZC4KPiBPciBlbHNlIHRoZSBsb2dpY2Fs
IGNwdTAocGh5c2ljYWwgY3B1MSkgd2lsbCBzdG9wIGl0c2VsZiBhbmQKPiB0aGUgcHJvY2Vzc29y
IHdpbGwgaGFuZy4KPgo+IFNpZ25lZC1vZmYtYnk6IFF1YW55YW5nIFdhbmcgPHF1YW55YW5nLndh
bmdAd2luZHJpdmVyLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgU2ltZWsgPG1pY2hhbC5z
aW1la0B4aWxpbnguY29tPgo+IC0tLQo+Cj4gIGFyY2gvYXJtL21hY2gtenlucS9wbGF0c21wLmMg
fCA2ICsrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtenlucS9wbGF0c21wLmMgYi9hcmNo
L2FybS9tYWNoLXp5bnEvcGxhdHNtcC5jCj4gaW5kZXggYTEwMDg1YmU5MDczLi42OGVjMzAzZmEy
NzggMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vbWFjaC16eW5xL3BsYXRzbXAuYwo+ICsrKyBiL2Fy
Y2gvYXJtL21hY2gtenlucS9wbGF0c21wLmMKPiBAQCAtMTUsNiArMTUsNyBAQAo+ICAjaW5jbHVk
ZSA8bGludXgvaW5pdC5oPgo+ICAjaW5jbHVkZSA8bGludXgvaW8uaD4KPiAgI2luY2x1ZGUgPGFz
bS9jYWNoZWZsdXNoLmg+Cj4gKyNpbmNsdWRlIDxhc20vc21wX3BsYXQuaD4KPiAgI2luY2x1ZGUg
PGFzbS9zbXBfc2N1Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9pcnFjaGlwL2FybS1naWMuaD4KPiAg
I2luY2x1ZGUgImNvbW1vbi5oIgo+IEBAIC0zMCw2ICszMSw3IEBAIGludCB6eW5xX2NwdW5fc3Rh
cnQodTMyIGFkZHJlc3MsIGludCBjcHUpCj4gIHsKPiAgICAgICAgIHUzMiB0cmFtcG9saW5lX2Nv
ZGVfc2l6ZSA9ICZ6eW5xX3NlY29uZGFyeV90cmFtcG9saW5lX2VuZCAtCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJnp5bnFfc2Vjb25kYXJ5X3RyYW1w
b2xpbmU7Cj4gKyAgICAgICB1MzIgcGh5X2NwdWlkID0gY3B1X2xvZ2ljYWxfbWFwKGNwdSk7Cj4K
PiAgICAgICAgIC8qIE1TOiBFeHBlY3RhdGlvbiB0aGF0IFNMQ1IgYXJlIGRpcmVjdGx5IG1hcCBh
bmQgYWNjZXNzaWJsZSAqLwo+ICAgICAgICAgLyogTm90IHBvc3NpYmxlIHRvIGp1bXAgdG8gbm9u
IGFsaWduZWQgYWRkcmVzcyAqLwo+IEBAIC0zOSw3ICs0MSw3IEBAIGludCB6eW5xX2NwdW5fc3Rh
cnQodTMyIGFkZHJlc3MsIGludCBjcHUpCj4gICAgICAgICAgICAgICAgIHUzMiB0cmFtcG9saW5l
X3NpemUgPSAmenlucV9zZWNvbmRhcnlfdHJhbXBvbGluZV9qdW1wIC0KPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmenlucV9zZWNvbmRhcnlfdHJhbXBv
bGluZTsKPgo+IC0gICAgICAgICAgICAgICB6eW5xX3NsY3JfY3B1X3N0b3AoY3B1KTsKPiArICAg
ICAgICAgICAgICAgenlucV9zbGNyX2NwdV9zdG9wKHBoeV9jcHVpZCk7Cj4gICAgICAgICAgICAg
ICAgIGlmIChhZGRyZXNzKSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgaWYgKF9fcGEoUEFH
RV9PRkZTRVQpKSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB6ZXJvID0gaW9y
ZW1hcCgwLCB0cmFtcG9saW5lX2NvZGVfc2l6ZSk7Cj4gQEAgLTY4LDcgKzcwLDcgQEAgaW50IHp5
bnFfY3B1bl9zdGFydCh1MzIgYWRkcmVzcywgaW50IGNwdSkKPiAgICAgICAgICAgICAgICAgICAg
ICAgICBpZiAoX19wYShQQUdFX09GRlNFVCkpCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBpb3VubWFwKHplcm8pOwo+ICAgICAgICAgICAgICAgICB9Cj4gLSAgICAgICAgICAgICAg
IHp5bnFfc2xjcl9jcHVfc3RhcnQoY3B1KTsKPiArICAgICAgICAgICAgICAgenlucV9zbGNyX2Nw
dV9zdGFydChwaHlfY3B1aWQpOwo+Cj4gICAgICAgICAgICAgICAgIHJldHVybiAwOwo+ICAgICAg
ICAgfQo+IC0tCj4gMi4xNy4xCj4KClRlc3RlZC1ieTogTWljaGFsIFNpbWVrIDxtaWNoYWwuc2lt
ZWtAeGlsaW54LmNvbT4KCkFwcGxpZWQsCk1pY2hhbAoKCi0tIApNaWNoYWwgU2ltZWssIEluZy4g
KE0uRW5nKSwgT3BlblBHUCAtPiBLZXlJRDogRkUzRDFGOTEKdzogd3d3Lm1vbnN0ci5ldSBwOiAr
NDItMC03MjE4NDI4NTQKTWFpbnRhaW5lciBvZiBMaW51eCBrZXJuZWwgLSBYaWxpbnggTWljcm9i
bGF6ZQpNYWludGFpbmVyIG9mIExpbnV4IGtlcm5lbCAtIFhpbGlueCBaeW5xIEFSTSBhbmQgWnlu
cU1QIEFSTTY0IFNvQ3MKVS1Cb290IGN1c3RvZGlhbiAtIFhpbGlueCBNaWNyb2JsYXplL1p5bnEv
WnlucU1QL1ZlcnNhbCBTb0NzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
