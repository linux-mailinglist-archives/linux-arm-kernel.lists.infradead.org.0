Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7F19924F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 13:39:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yYF/7QkTk/I0MJmzFF3p04ExLmoGH+Zllj/UWRlpJ4Q=; b=W470n4m2LrTRLo
	uuaRArF/p+QBeH8LVisv2/T6JzToEBimwbG71VhLOiuujxCaptmDVh7yLHHFqhXWOEv0D+uTal9wJ
	URF8br2Hi4gkbleI/BaQge6y06Vl+NTwnnCG7tJxOjtpkBGr+WbcivZUzKaUuKX/cb3lggkMkNmj/
	nBDhE703aRzeJZJ8CDlrT8dkMYRQ+8GD50sWp1xS8YW/xuIRU+KVC2nx9NMeP/DVVtbWJvk8ZysyD
	5avf9eHbXs+KUcR0LgrgYBZnUZI5GOtXnDzkq7z+2CtkU0LKYkxwQ0/AuusSWGudUQss86dX4Qj8u
	WXrSZvbHESNpX2ZfNBwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0lQi-0002Ba-6W; Thu, 22 Aug 2019 11:39:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0lQP-00028s-3g
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 11:38:42 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1i0lQB-0006FV-NJ; Thu, 22 Aug 2019 13:38:27 +0200
Message-ID: <1566473905.3653.10.camel@pengutronix.de>
Subject: Re: [PATCH 1/1] arm64: dts: imx8mq: Add mux controller to iomuxc_gpr
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Guido =?ISO-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,  Lucas Stach <l.stach@pengutronix.de>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,  Carlo
 Caione <ccaione@baylibre.com>, "Angus Ainslie (Purism)" <angus@akkea.ca>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Thu, 22 Aug 2019 13:38:25 +0200
In-Reply-To: <fa3b1df7fc5e74f375df5de53061d1a93d154b51.1566471985.git.agx@sigxcpu.org>
References: <cover.1566471985.git.agx@sigxcpu.org>
 <fa3b1df7fc5e74f375df5de53061d1a93d154b51.1566471985.git.agx@sigxcpu.org>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_043841_175179_E0BF2AEF 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAyMDE5LTA4LTIyIGF0IDEzOjEwICswMjAwLCBHdWlkbyBHw7xudGhlciB3cm90ZToK
PiBUaGUgb25seSBtdXggY29udHJvbHMgdGhlIE1JUEkgRFNJIGlucHV0IHNlbGVjdGlvbi4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgoKUmV2aWV3
ZWQtYnk6IFBoaWxpcHAgWmFiZWwgPHAuemFiZWxAcGVuZ3V0cm9uaXguZGU+CgpyZWdhcmRzClBo
aWxpcHAKCj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNp
IHwgOSArKysrKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9p
bXg4bXEuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpCj4g
aW5kZXggNGZkZDYwZjJjNTFlLi4zZjM1OTRkOTQ4NWMgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9pbXg4bXEuZHRzaQo+IEBAIC00NDAsOCArNDQwLDE1IEBACj4gIAkJCX07
Cj4gIAo+ICAJCQlpb211eGNfZ3ByOiBzeXNjb25AMzAzNDAwMDAgewo+IC0JCQkJY29tcGF0aWJs
ZSA9ICJmc2wsaW14OG1xLWlvbXV4Yy1ncHIiLCAiZnNsLGlteDZxLWlvbXV4Yy1ncHIiLCAic3lz
Y29uIjsKPiArCQkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDhtcS1pb211eGMtZ3ByIiwgImZzbCxp
bXg2cS1pb211eGMtZ3ByIiwKPiArCQkJCQkgICAgICJzeXNjb24iLCAic2ltcGxlLW1mZCI7Cj4g
IAkJCQlyZWcgPSA8MHgzMDM0MDAwMCAweDEwMDAwPjsKPiArCj4gKwkJCQltdXg6IG11eC1jb250
cm9sbGVyIHsKPiArCQkJCQljb21wYXRpYmxlID0gIm1taW8tbXV4IjsKPiArCQkJCQkjbXV4LWNv
bnRyb2wtY2VsbHMgPSA8MT47Cj4gKwkJCQkJbXV4LXJlZy1tYXNrcyA9IDwweDM0IDB4MDAwMDAw
MDQ+OyAvKiBNSVBJX01VWF9TRUwgKi8KPiArCQkJCX07Cj4gIAkJCX07Cj4gIAo+ICAJCQlvY290
cDogb2NvdHAtY3RybEAzMDM1MDAwMCB7CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
