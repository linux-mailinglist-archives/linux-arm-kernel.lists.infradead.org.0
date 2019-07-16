Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFF06A657
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 12:20:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wQGpFwkb8nQAqDABxg+wfQz0dJWH0R/lmCng8SHF4/c=; b=iMLHrw5uLcI7Ey
	NT97rCxjyiRk0chGgRKVtbrknMcM3km92g44BNfPunpMR9yytZJgGCrylcvtgKe97zypSFdIH5ZHc
	0GYi4/31O6Rpt5S1PouWnDOmDNQR2qZYSsrbKxU2B6Jy+TXdETCRHCQubx9s65IpYJhsdb0rGIxnC
	ABl6vovOaqbqCSJXkgEkI+6gY/itOpcmPkxw3hP93GEpi2r0buFwZ64mV6czsyyekGID76EcKdGqH
	ukbuteUiqFm3JN4uT7fX6mlRHA56LizLQtaSdfCXgSCOlqSBuXw5SWP7aNpKWVAzZOJYwQe/wIeZ+
	di6jqxFC1w8TR8fmGURA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnKZC-0003N2-FL; Tue, 16 Jul 2019 10:20:14 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnKYs-0003ME-8v
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 10:19:56 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190716101950epoutp02f290816b86cd06a678c6660f4ef01f58~x2-T-rZmp1000610006epoutp025
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 10:19:50 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190716101950epoutp02f290816b86cd06a678c6660f4ef01f58~x2-T-rZmp1000610006epoutp025
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563272391;
 bh=li7ESFc2xgRYcwa9WScTiDWW9Wi1EvOiqBpY40/8aVc=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=ACHd+HqDb0UQPol0WzucuZvE6c/vhC5HFUD9vbv7W2sIJqpzYjgtjWpBtRYSO8LJY
 gtZswW9V5CfxuQbPUliS+f3U83vnbaFI4yugeNgUDsvk9UlQzMSuATjmz/Ca203b+n
 +rwOvbAfAPSM4dNNBMyLMjtixhGyJMrlpw/nPc5Q=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190716101950epcas1p1ded6661b61b328d3586cc5dc7c97d191~x2-TX_5UQ3240732407epcas1p1X;
 Tue, 16 Jul 2019 10:19:50 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.153]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 45nxGW6NXdzMqYkd; Tue, 16 Jul
 2019 10:19:47 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 7D.21.04088.3C4AD2D5; Tue, 16 Jul 2019 19:19:47 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190716101947epcas1p15db99ace732fffd2b306aaae399c0846~x2-QhmQWr3240732407epcas1p1N;
 Tue, 16 Jul 2019 10:19:47 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190716101947epsmtrp2a413298d92059196ae9ede662408dff5~x2-Qd792O2006020060epsmtrp2U;
 Tue, 16 Jul 2019 10:19:47 +0000 (GMT)
X-AuditID: b6c32a35-85dff70000000ff8-5d-5d2da4c31778
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 10.38.03706.2C4AD2D5; Tue, 16 Jul 2019 19:19:46 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190716101946epsmtip2ce454fe010487ec55227faff672c6d99~x2-QA088I0196001960epsmtip2K;
 Tue, 16 Jul 2019 10:19:46 +0000 (GMT)
Subject: Re: [PATCH v1 08/50] clk: samsung: change aclk266_isp clocks
 definitions Exynos5420
To: Lukasz Luba <l.luba@partner.samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <5ac878fa-21c8-afcd-9afe-13ed3cd36afb@samsung.com>
Date: Tue, 16 Jul 2019 19:22:53 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715124417.4787-9-l.luba@partner.samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrEJsWRmVeSWpSXmKPExsWy7bCmru7hJbqxBvvXGljcWneO1WLjjPWs
 FvOPAFn9j18zW5w/v4Hd4mzTG3aLWw0yFpseX2O1+Nhzj9Xi8q45bBYzzu9jslh75C67xdLr
 F5ksLp5ytbjduILNonXvEXaLw2/aWS3+XdvI4iDksWbeGkaP9zda2T02repk89i8pN7j4Ls9
 TB59W1YxenzeJBfAHpVtk5GamJJapJCal5yfkpmXbqvkHRzvHG9qZmCoa2hpYa6kkJeYm2qr
 5OIToOuWmQP0hJJCWWJOKVAoILG4WEnfzqYov7QkVSEjv7jEVim1ICWnwLJArzgxt7g0L10v
 OT/XytDAwMgUqDAhO+PlkYXsBfNVK57PaWVvYFwh38XIySEhYCLxYd8vxi5GLg4hgR2MEn/2
 nWCBcD4xSqz7+ZYVwvnGKHFn/XpGmJbdD05DVe1llNiweCuU855RYtGaDuYuRg4OYYE4ic0d
 QSANIgLnGCU6nkqD2MwC05gkZs0TBbHZBLQk9r+4wQZi8wsoSlz98ZgRpJVXwE5i7Q0mkDCL
 gKrE/GmrWEBsUYEIiVNH5oHZvAKCEidnPgGzOQXsJf4+3MEMMV5c4taT+UwQtrxE89bZzCCn
 SQicY5d4OPEW1AMuEgdXbWaBsIUlXh3fwg5hS0l8freXDcKullh58ggbRHMHo8SW/RdYIRLG
 EvuXTmYCOZRZQFNi/S59iLCixM7fcxkhFvNJvPvawwpSIiHAK9HRJgRRoixx+cFdJghbUmJx
 eyfbBEalWUjemYXkhVlIXpiFsGwBI8sqRrHUguLc9NRiwwJD5MjexAhO31qmOxinnPM5xCjA
 wajEw6uwXydWiDWxrLgy9xCjBAezkgiv7VftWCHelMTKqtSi/Pii0pzU4kOMpsDQnsgsJZqc
 D8wteSXxhqZGxsbGFiaGZqaGhkrivPP+aMYKCaQnlqRmp6YWpBbB9DFxcEo1MG4VLxTa/2p5
 cdAVmwJO1s1Zq26WLHskcmLWa+l2rUztz4+Us7SvToswF9mx5VfoiwnGXdz7qytmvVXZ83pF
 gXPFdd8EhVlNczapJ5x5yDn10HulyKuOh/WyrsY6pZsd7vHq9To82yRwganaumkObWd+LRK2
 /ZNuaOl/9dG5RztrXorJWRyfxa7EUpyRaKjFXFScCADNnSeO9QMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLIsWRmVeSWpSXmKPExsWy7bCSvO6hJbqxBls7bCxurTvHarFxxnpW
 i/lHgKz+x6+ZLc6f38BucbbpDbvFrQYZi02Pr7FafOy5x2pxedccNosZ5/cxWaw9cpfdYun1
 i0wWF0+5WtxuXMFm0br3CLvF4TftrBb/rm1kcRDyWDNvDaPH+xut7B6bVnWyeWxeUu9x8N0e
 Jo++LasYPT5vkgtgj+KySUnNySxLLdK3S+DKeHlkIXvBfNWK53Na2RsYV8h3MXJySAiYSOx+
 cJqli5GLQ0hgN6PE8o65bBAJSYlpF48ydzFyANnCEocPF0PUvGWU2LCxkQUkLiwQJ7G5Iwgk
 LiJwjlGi7+9ZdpBeZoFpTBIn1jNDNBxnlNgzeTYzSIJNQEti/4sbYAv4BRQlrv54zAgyiFfA
 TmLtDSaQMIuAqsT8aatYQGxRgQiJSdd2gtm8AoISJ2c+AbM5Bewl/j7cwQyxS13iz7xLULa4
 xK0n85kgbHmJ5q2zmScwCs9C0j4LScssJC2zkLQsYGRZxSiZWlCcm55bbFhgmJdarlecmFtc
 mpeul5yfu4kRHMlamjsYLy+JP8QowMGoxMN7Yo9OrBBrYllxZe4hRgkOZiURXtuv2rFCvCmJ
 lVWpRfnxRaU5qcWHGKU5WJTEeZ/mHYsUEkhPLEnNTk0tSC2CyTJxcEo1MAq+KBBv1c2d/21Z
 WsiU9EvXH+17EZ50X3ztr3q/X78rT79gnLrrv8wOli6TlOLWF6YPIwt6EuXWpP6fKb15itev
 hNquo3P4VHh2LyxsmbQy6P4a3p+aMVwhr2Yx7D1Z1aFrwHmjdkHHjHnlr7emnayp5bu/bqWY
 bIPVN8Pp997qH5zH2LnEVV+JpTgj0VCLuag4EQBDt+tT4AIAAA==
X-CMS-MailID: 20190716101947epcas1p15db99ace732fffd2b306aaae399c0846
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190715124440eucas1p10bb25e412f32f0da95761f96831893e6
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124440eucas1p10bb25e412f32f0da95761f96831893e6@eucas1p1.samsung.com>
 <20190715124417.4787-9-l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_031954_554257_7CA453C8 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, b.zolnierkie@samsung.com, sboyd@kernel.org,
 mturquette@baylibre.com, krzk@kernel.org, a.hajda@samsung.com,
 robh+dt@kernel.org, kyungmin.park@samsung.com, kgene@kernel.org,
 myungjoo.ham@samsung.com, s.nawrocki@samsung.com, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxOS4gNy4gMTUuIOyYpO2bhCA5OjQzLCBMdWthc3ogTHViYSB3cm90ZToKPiBUaGUg
QUNMSzI2Nl9JU1AgaGFzIGRpZmZlcmVudCB0b3BvbG9neSBpbiBFeHlub3M1NDIwIGFuZCA1NDIy
LzU4MDAuICBJbgo+IEV4eW5vczU0MjAgdGhpcyBjbG9jayBkb2VzIG5vdCBoYXZlIGRlZGljYXRl
ZCBNVVggd2hpY2ggY2hvb3NlcyBQTEwgaW5zdGVhZAo+IGl0IHRha2VzIHRoZSBjbG9jayBmcm9t
IDItbGV2ZWwgbXV4IGZyb20gQUNMSzI2Ni4gIEluIEV4eW5vczU0MjIgdGhlcmUgaXMgYQo+IGRl
ZGljYXRlZCBjbG9jayB0cmVlIGFuZCB0aGUgUExMIGNhbiBiZSBjaG9zZW4uICBUaGUgcGF0Y2gg
YWRkcyBuZWVkZWQKPiBNVVhlcyBpbiB0aGUgZXh5bm9zNTgwMF9tdXhfY2xva3MsIHVwZGF0ZXMg
ZXh5bm9zNXhfbXV4X2Nsa3MgYW5kCj4gZXh5bm9zNTQyMF9tdXhfY2xrcyBwcm9wZXJseS4gSXQg
YWxzbyBhZGRzIElEcyB0byBtYW5nZSB0aGVzZSBjbG9ja3MgZnJvbQo+IERULgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IEx1a2FzeiBMdWJhIDxsLmx1YmFAcGFydG5lci5zYW1zdW5nLmNvbT4KPiAtLS0K
PiAgZHJpdmVycy9jbGsvc2Ftc3VuZy9jbGstZXh5bm9zNTQyMC5jIHwgMTcgKysrKysrKysrKysr
KysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0MjAuYyBi
L2RyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0MjAuYwo+IGluZGV4IDlkNTQ4NTZkYmNk
YS4uNWYyNTEyNzliNGM4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4
eW5vczU0MjAuYwo+ICsrKyBiL2RyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0MjAuYwo+
IEBAIC00MzIsNiArNDMyLDEwIEBAIFBOQU1FKG1vdXRfZ3JvdXAxNl81ODAwX3ApCT0geyAiZG91
dF9vc2NfZGl2IiwgIm1vdXRfbWF1X2VwbGxfY2xrIiB9Owo+ICBQTkFNRShtb3V0X214X21zcGxs
X2Njb3JlX3BoeV9wKSA9IHsgInNjbGtfYnBsbCIsICJtb3V0X3NjbGtfZHBsbCIsCj4gIAkJCQkJ
Im1vdXRfc2Nsa19tcGxsIiwgImZmX2RvdXRfc3BsbDIiLAo+ICAJCQkJCSJtb3V0X3NjbGtfc3Bs
bCIsICJtb3V0X3NjbGtfZXBsbCJ9Owo+ICtQTkFNRShtb3V0X2dyb3VwMTdfNTgwMF9wKQk9IHsg
ImRvdXRfYWNsazI2Nl9pc3AiLCAiZG91dF9zY2xrX3N3IiB9Owo+ICtQTkFNRShtb3V0X2dyb3Vw
MThfNTgwMF9wKQk9IHsgImRvdXRfb3NjX2RpdiIsICJtb3V0X3N3X2FjbGsyNjZfaXNwIiB9Owo+
ICtQTkFNRShtb3V0X2dyb3VwMTlfNTgwMF9wKQk9IHsgIm1vdXRfc2Nsa19jcGxsIiwgIm1vdXRf
c2Nsa19kcGxsIiwKPiArCQkJCQkibW91dF9zY2xrX21wbGwiLCAibW91dF9zY2xrX2lwbGwifTsK
PiAgCj4gIC8qIGZpeGVkIHJhdGUgY2xvY2tzIGdlbmVyYXRlZCBvdXRzaWRlIHRoZSBzb2MgKi8K
PiAgc3RhdGljIHN0cnVjdCBzYW1zdW5nX2ZpeGVkX3JhdGVfY2xvY2sKPiBAQCAtNDk0LDYgKzQ5
OCw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc2Ftc3VuZ19tdXhfY2xvY2sgZXh5bm9zNTgwMF9t
dXhfY2xrc1tdIF9faW5pdGNvbnN0ID0gewo+ICAJTVVYKENMS19TQ0xLX0JQTEwsICJzY2xrX2Jw
bGwiLCBtb3V0X2JwbGxfcCwgU1JDX1RPUDcsIDI0LCAxKSwKPiAgCU1VWCgwLCAibW91dF9lcGxs
MiIsIG1vdXRfZXBsbDJfNTgwMF9wLCBTUkNfVE9QNywgMjgsIDEpLAo+ICAKPiArCU1VWChDTEtf
TU9VVF9BQ0xLMjY2X0lTUCwgIm1vdXRfYWNsazI2Nl9pc3AiLCBtb3V0X2dyb3VwMTlfNTgwMF9w
LAo+ICsJCQlTUkNfVE9QOCwgMTIsIDIpLAo+ICAJTVVYKDAsICJtb3V0X2FjbGs1NTBfY2FtIiwg
bW91dF9ncm91cDNfNTgwMF9wLCBTUkNfVE9QOCwgMTYsIDMpLAo+ICAJTVVYKDAsICJtb3V0X2Fj
bGtmbDFfNTUwX2NhbSIsIG1vdXRfZ3JvdXAzXzU4MDBfcCwgU1JDX1RPUDgsIDIwLCAzKSwKPiAg
CU1VWCgwLCAibW91dF9hY2xrNDMyX2NhbSIsIG1vdXRfZ3JvdXA2XzU4MDBfcCwgU1JDX1RPUDgs
IDI0LCAyKSwKPiBAQCAtNTAxLDYgKzUwNyw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc2Ftc3Vu
Z19tdXhfY2xvY2sgZXh5bm9zNTgwMF9tdXhfY2xrc1tdIF9faW5pdGNvbnN0ID0gewo+ICAKPiAg
CU1VWF9GKENMS19NT1VUX1VTRVJfTUFVX0VQTEwsICJtb3V0X3VzZXJfbWF1X2VwbGwiLCBtb3V0
X2dyb3VwMTZfNTgwMF9wLAo+ICAJCQlTUkNfVE9QOSwgOCwgMSwgQ0xLX1NFVF9SQVRFX1BBUkVO
VCwgMCksCj4gKwlNVVgoQ0xLX01PVVRfVVNFUl9BQ0xLMjY2X0lTUCwgIm1vdXRfdXNlcl9hY2xr
MjY2X2lzcCIsCj4gKwkJCW1vdXRfZ3JvdXAxOF81ODAwX3AsIFNSQ19UT1A5LCAxMiwgMSksCj4g
IAlNVVgoMCwgIm1vdXRfdXNlcl9hY2xrNTUwX2NhbSIsIG1vdXRfZ3JvdXAxNV81ODAwX3AsCj4g
IAkJCQkJCQlTUkNfVE9QOSwgMTYsIDEpLAo+ICAJTVVYKDAsICJtb3V0X3VzZXJfYWNsa2ZsMV81
NTBfY2FtIiwgbW91dF9ncm91cDEzXzU4MDBfcCwKPiBAQCAtNTEwLDYgKzUxOCw4IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3Qgc2Ftc3VuZ19tdXhfY2xvY2sgZXh5bm9zNTgwMF9tdXhfY2xrc1tdIF9f
aW5pdGNvbnN0ID0gewo+ICAJTVVYKDAsICJtb3V0X3VzZXJfYWNsazQzMl9zY2FsZXIiLCBtb3V0
X2dyb3VwOV81ODAwX3AsCj4gIAkJCQkJCQlTUkNfVE9QOSwgMjgsIDEpLAo+ICAKPiArCU1VWChD
TEtfTU9VVF9TV19BQ0xLMjY2X0lTUCwgIm1vdXRfc3dfYWNsazI2Nl9pc3AiLCBtb3V0X2dyb3Vw
MTdfNTgwMF9wLAo+ICsJCQlTUkNfVE9QMTMsIDEyLCAxKSwKPiAgCU1VWCgwLCAibW91dF9zd19h
Y2xrNTUwX2NhbSIsIG1vdXRfZ3JvdXAxNF81ODAwX3AsIFNSQ19UT1AxMywgMTYsIDEpLAo+ICAJ
TVVYKDAsICJtb3V0X3N3X2FjbGtmbDFfNTUwX2NhbSIsIG1vdXRfZ3JvdXAxMl81ODAwX3AsCj4g
IAkJCQkJCQlTUkNfVE9QMTMsIDIwLCAxKSwKPiBAQCAtNTI0LDYgKzUzNCw4IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3Qgc2Ftc3VuZ19tdXhfY2xvY2sgZXh5bm9zNTgwMF9tdXhfY2xrc1tdIF9faW5p
dGNvbnN0ID0gewo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IHNhbXN1bmdfZGl2X2Nsb2NrIGV4eW5v
czU4MDBfZGl2X2Nsa3NbXSBfX2luaXRjb25zdCA9IHsKPiAgCURJVihDTEtfRE9VVF9BQ0xLNDAw
X1dDT1JFLCAiZG91dF9hY2xrNDAwX3djb3JlIiwKPiAgCQkJIm1vdXRfYWNsazQwMF93Y29yZSIs
IERJVl9UT1AwLCAxNiwgMyksCj4gKwlESVYoQ0xLX0RPVVRfQUNMSzI2Nl9JU1AsICJkb3V0X2Fj
bGsyNjZfaXNwIiwgIm1vdXRfYWNsazI2Nl9pc3AiLAo+ICsJCQkJRElWX1RPUDgsIDEyLCAzKSwK
PiAgCURJVigwLCAiZG91dF9hY2xrNTUwX2NhbSIsICJtb3V0X2FjbGs1NTBfY2FtIiwKPiAgCQkJ
CURJVl9UT1A4LCAxNiwgMyksCj4gIAlESVYoMCwgImRvdXRfYWNsa2ZsMV81NTBfY2FtIiwgIm1v
dXRfYWNsa2ZsMV81NTBfY2FtIiwKPiBAQCAtNTc0LDYgKzU4Niw5IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3Qgc2Ftc3VuZ19tdXhfY2xvY2sgZXh5bm9zNTQyMF9tdXhfY2xrc1tdIF9faW5pdGNvbnN0
ID0gewo+ICAJTVVYKDAsICJtb3V0X2FjbGszMDBfZGlzcDEiLCBtb3V0X2dyb3VwMV9wLCBTUkNf
VE9QMiwgMjQsIDIpLAo+ICAJTVVYKDAsICJtb3V0X2FjbGszMDBfZ3NjbCIsIG1vdXRfZ3JvdXAx
X3AsIFNSQ19UT1AyLCAyOCwgMiksCj4gIAo+ICsJTVVYKENMS19NT1VUX1VTRVJfQUNMSzI2Nl9J
U1AsICJtb3V0X3VzZXJfYWNsazI2Nl9pc3AiLAo+ICsJCQltb3V0X3VzZXJfYWNsazI2Nl9pc3Bf
cCwgU1JDX1RPUDQsIDE2LCAxKSwKPiArCj4gIAlNVVgoQ0xLX01PVVRfTVhfTVNQTExfQ0NPUkUs
ICJtb3V0X214X21zcGxsX2Njb3JlIiwKPiAgCQkJbW91dF9ncm91cDVfNTgwMF9wLCBTUkNfVE9Q
NywgMTYsIDIpLAo+ICAJTVVYX0YoMCwgIm1vdXRfbWF1X2VwbGxfY2xrIiwgbW91dF9tYXVfZXBs
bF9jbGtfcCwgU1JDX1RPUDcsIDIwLCAyLAo+IEBAIC02NDEsOCArNjU2LDYgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBzYW1zdW5nX211eF9jbG9jayBleHlub3M1eF9tdXhfY2xrc1tdIF9faW5pdGNv
bnN0ID0gewo+ICAJCQlTUkNfVE9QNCwgOCwgMSksCj4gIAlNVVgoMCwgIm1vdXRfdXNlcl9hY2xr
MzMzXzQzMl9pc3AwIiwgbW91dF91c2VyX2FjbGszMzNfNDMyX2lzcDBfcCwKPiAgCQkJU1JDX1RP
UDQsIDEyLCAxKSwKPiAtCU1VWCgwLCAibW91dF91c2VyX2FjbGsyNjZfaXNwIiwgbW91dF91c2Vy
X2FjbGsyNjZfaXNwX3AsCj4gLQkJCVNSQ19UT1A0LCAxNiwgMSksCj4gIAlNVVgoMCwgIm1vdXRf
dXNlcl9hY2xrMjY2IiwgbW91dF91c2VyX2FjbGsyNjZfcCwgU1JDX1RPUDQsIDIwLCAxKSwKPiAg
CU1VWCgwLCAibW91dF91c2VyX2FjbGsxNjYiLCBtb3V0X3VzZXJfYWNsazE2Nl9wLCBTUkNfVE9Q
NCwgMjQsIDEpLAo+ICAJTVVYKENMS19NT1VUX1VTRVJfQUNMSzMzMywgIm1vdXRfdXNlcl9hY2xr
MzMzIiwgbW91dF91c2VyX2FjbGszMzNfcCwKPiAKCkkgY2hlY2tlZCBpdCBvbiBFeHlub3M1NDIw
LzU0MjIgVFJNLgoKQWNrZWQtYnk6IENoYW53b28gQ2hvaSA8Y3cwMC5jaG9pQHNhbXN1bmcuY29t
PgoKLS0gCkJlc3QgUmVnYXJkcywKQ2hhbndvbyBDaG9pClNhbXN1bmcgRWxlY3Ryb25pY3MKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
