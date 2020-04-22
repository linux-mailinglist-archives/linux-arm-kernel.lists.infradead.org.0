Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D14EA1B3B0C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 11:19:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MnoV54AuLwrFEoPJEZHUiUAl+Em0EoTcxSqDW1rBl2I=; b=dEciOKZCg7psTJ
	4MBOBne6iNNzDyFGpbxff4gdrzKozYVPOIxqmzb/J7KSrjiICznAjERg76IqEorPdrU+zyJlA2KxJ
	PwGJAHCei7GQJ/J51e2Jq4Vqh4wCRZ4CVeolN1sQIjhiLfDbP8sDQxw7KmvMV7fknFUeYLSqAKq3U
	o8SGPl34PcJZsSnZp+m5Dvdm6JPLRWu86+htT/ua+IPZN1RVyk81Emq73d/wYDv0a5f6GmVnZNpU0
	ETvX9Kvt3moLQH3ntHmw1nCabV14vTQN13gvx0BEMwrYg+2pn9Debm7weLRTVrq8dViInyArAAU1E
	7aANIxlA1/ijGiveLntQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRBXB-0002p9-PF; Wed, 22 Apr 2020 09:19:09 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRBX0-0002nV-Fj
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 09:19:00 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 60C65201036;
 Wed, 22 Apr 2020 11:18:54 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 53E5620101B;
 Wed, 22 Apr 2020 11:18:54 +0200 (CEST)
Received: from localhost (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 3E942202AF;
 Wed, 22 Apr 2020 11:18:54 +0200 (CEST)
Date: Wed, 22 Apr 2020 12:18:54 +0300
From: Abel Vesa <abel.vesa@nxp.com>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 01/13] mfd: Add i.MX generic mix support
Message-ID: <20200422091854.rhtkcfrdptwofngs@fsr-ub1664-175>
References: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
 <1586937773-5836-2-git-send-email-abel.vesa@nxp.com>
 <20200417080747.GE2167633@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417080747.GE2167633@dell>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_021858_796212_44EB3A95 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAtMDQtMTcgMDk6MDc6NDcsIExlZSBKb25lcyB3cm90ZToKPiBPbiBXZWQsIDE1IEFwciAy
MDIwLCBBYmVsIFZlc2Egd3JvdGU6Cj4KPiA+IFNvbWUgb2YgdGhlIGkuTVggU29DcyBoYXZlIGEg
SVAgZm9yIGludGVyZmFjaW5nIHRoZSBkZWRpY2F0ZWQgSVBzIHdpdGgKPiA+IGNsb2NrcywgcmVz
ZXRzIGFuZCBpbnRlcnJ1cHRzLCBwbHVzIHNvbWUgb3RoZXIgc3BlY2lmaWMgY29udHJvbCByZWdp
c3RlcnMuCj4gPiBUbyBhbGxvdyB0aGUgZnVuY3Rpb25hbGl0eSB0byBiZSBzcGxpdCBiZXR3ZWVu
IGRyaXZlcnMsIHRoaXMgTUZEIGRyaXZlciBpcwo+ID4gYWRkZWQgdGhhdCBoYXMgb25seSB0d28g
cHVycG9zZXM6IHJlZ2lzdGVyIHRoZSBkZXZpY2VzIGFuZCBtYXAgdGhlIGVudGlyZQo+ID4gcmVn
aXN0ZXIgYWRkcmVzc2VzLiBFdmVyeXRoaW5nIGVsc2UgaXMgbGVmdCB0byB0aGUgZGVkaWNhdGVk
IGRyaXZlcnMgdGhhdAo+ID4gd2lsbCBiaW5kIHRvIHRoZSByZWdpc3RlcmVkIGRldmljZXMuCj4g
Pgo+ID4gU2lnbmVkLW9mZi1ieTogQWJlbCBWZXNhIDxhYmVsLnZlc2FAbnhwLmNvbT4KPiA+IC0t
LQo+ID4gIGRyaXZlcnMvbWZkL0tjb25maWcgICB8IDExICsrKysrKysrKysrCj4gPiAgZHJpdmVy
cy9tZmQvTWFrZWZpbGUgIHwgIDEgKwo+ID4gIGRyaXZlcnMvbWZkL2lteC1taXguYyB8IDQ4ICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gIDMgZmls
ZXMgY2hhbmdlZCwgNjAgaW5zZXJ0aW9ucygrKQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL21mZC9pbXgtbWl4LmMKPgo+IEZvciBjb21wbGV0ZW5lc3MgLSBBcm5kJ3MgcmVwbHkgdG8g
dGhpcyBwYXRjaDoKPgo+ICBodHRwczovL3d3dy5zcGluaWNzLm5ldC9saXN0cy9saW51eC1jbGsv
bXNnNDc3MDMuaHRtbAoKSSdtIHJlcGx5aW5nIGhlcmUgdG8gQXJuZCdzIHJlcGx5LgoKSSdtIHRy
eWluZyB0byBnaXZlIGhlcmUgYSB3aG9sZSBwaWN0dXJlIG9mIHRoZSBlbnRpcmUgcHJvYmxlbSB3
aGlsZSB0aGUKZG9jdW1lbnRhdGlvbiBmb3IgaS5NWDhNUCBpcyBfbm90IHlldF8gcHVibGljLgoK
SGlzdG9yaWNhbGx5LCBlYWNoIElQIHdvdWxkIGhhdmUgaXRzIG93biBlbmNsb3N1cmUgZm9yIGFs
bCB0aGUgcmVsYXRlZCBHUFJzLgpTdGFydGluZyB3aXRoIGkuTVg4TVAgc29tZSBHUFJzIChhbmQg
c29tZSBzdWJwYXJ0cykgZnJvbSB0aGUgSVAgd2VyZSBwbGFjZWQKaW5zaWRlIHRoZXNlIG1peGVz
LgoKQXVkaW9taXggZm9yIGV4YW1wbGUsIGhhcyBtdWx0aXBsZSBTQUlzLCBhIFBMTCwgYW5kIHNv
bWUgcmVzZXQgYml0cyBmb3IgRUFSQyBhbmQKc29tZSBHUFJzIGZvciBBdWRpb0RTUC4gVGhpcyBt
ZWFucyB0aGF0IGkuTVg4TVAgaGFzIDcgU0FJcywgMSBFQVJDIGFuZCAxIEF1ZGlvRFNQLgpGdXR1
cmUgcGxhdGZvcm1zIG1pZ2h0IGhhdmUgZGlmZmVyZW50IG51bWJlcnMgb2YgU0FJcywgRUFSQ3Mg
b3IgQXVkaW9EU1BzLiBUaGUgUExMCmNhbid0IGJlIHBsYWNlZCBpbiBvbmUgb2YgdGhvc2UgU0FJ
cyBhbmQgaXQgd2FzIHBsYWNlZCBpbiBhdWRpb21peC4KVGhlIGkuTVg4TVAgaGFzIGF0IGxlYXN0
IDQgb2YgdGhlc2UgbWl4ZXMuCgpOb3csIHRoZSBjb21tb25hbGl0aWVzIGJldHdlZW4gYWxsIG1p
eGVzIGFyZToKIC0gaGF2ZSB0aGVpciBvd24gcG93ZXIgZG9tYWlucwogLSBkcml2ZW4gYnkgZGVk
aWNhdGVkIGNsb2NrIHNsaWNlCiAtIGNvbnRhaW4gY2xvY2tzIGFuZCByZXNldHMKIC0gc29tZSB2
ZXJ5IHN1YnN5c3RlbSBzcGVjaWZpYyBHUFJzCgpLbm93aW5nIHRoYXQgZWFjaCBtaXggaGFzIGl0
cyBvd24gcG93ZXIgZG9tYWluLCBBRkFJQ1QsIGl0IG5lZWRzIHRvIGJlIHJlZ2lzdGVyZWQKYXMg
YSBzaW5nbGUgZGV2aWNlLiBDb25zaWRlcmluZyB0aGF0IGl0IGNhbiBoYXZlIGNsb2NrcyAoYXVk
aW9taXggaGFzIGdhdGVzLAptdXhlcyBhbmQgcGxscyksIEkgYmVsaWV2ZSB0aGF0IG5lZWRzIGEg
Y2xvY2sgZHJpdmVyLCBldmVuIG1vcmUgc28gc2luY2UgdGhlCm11eGVzIG5lZWQgdGhlaXIgcGFy
ZW50cyBmcm9tIHRoZSBwbGF0Zm9ybSBjbG9jayBkcml2ZXIuIFNhbWUgcHJpbmNpcGxlIGFwcGxp
ZXMKdG8gcmVzZXQgYml0cy4gVGhlIHN1YnN5c3RlbSBzcGVjaWZpYyBHUFJzIGNhbiBiZSByZWdp
c3RlcmVkIGFzIHN5c2NvbiBkZXZpY2VzCmFuZCB0YWtlbiBjYXJlIG9mIGJ5IGl0cyBjb3VudGVy
cGFydCBJUCAoZS5nLiB0aGUgQXVkaW9EU1Agc3BlY2lmaWMgcmVncyB3b3VsZApiZSB0YWtlbiBj
YXJlIG9mIGJ5IHRoZSBEU1AgZHJpdmVyLCBpZiB0aGVyZSBpcyBvbmUpLgoKTm93IGJhc2VkIG9u
IGFsbCBvZiB0aGUgYWJvdmUsIGJ5IHVzaW5nIE1GRCB3ZSB0YWtlIGNhcmUgb2YgdGhlIHBvd2Vy
IGRvbWFpbgpjb250cm9sIGZvciB0aGUgZW50aXJlIG1peCwgcGx1cywgdGhlIE1GRCBkb2Vzbid0
IGhhdmUgYW55IGtpbmQgb2YKZnVuY3Rpb25hbGl0eSBieSBpdHMgb3duLCByZWx5aW5nIG9uIGl0
cyBjaGlsZHJlbiBkZXZpY2VzIHRoYXQgYXJlIHBvcHVsYXRlZApiYXNlZCBvbiB3aGF0IGlzIGlu
IHRoZSBtaXggTUZEIGRldmljZXRyZWUgbm9kZS4KCj4gLS0KPiBMZWUgSm9uZXMgW+adjueQvOaW
r10KPiBMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKPiBMaW5hcm8ub3JnIOKUgiBPcGVu
IHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKPiBGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8
IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
