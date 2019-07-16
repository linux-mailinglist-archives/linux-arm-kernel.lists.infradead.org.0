Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5839F6A4E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 11:28:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GlsoF2aCPW7r5vKHs9xsQ75GY04JYWAtOsU0Oo2/Hsw=; b=MXlLCF4yxxv594
	r61Z5SoGrWm+FiKdb+4AS7sjx0ke2GX3cjOX96/aWgVXbOopZIqiy8biZWh8YLgfKOMIR6zCUX/qH
	Dv5TdZbBw/lqs84EkL5Y5S3qyBaOXmBSX0oz6TIeTMePkNkqW+y8JoXLwjwOjFKivfTXiH/gwl64G
	t/Owtm8TZBEuXgs8S+KrmQKjR3JXJ+LogG6ppLkwnv6Fr1E8+OBlGbirVcDvSMhnkxUrSLstkoFuN
	DPUparwzHgW0TXXAhroXiLiH3L6PmQJIG6gXp5fe7R+EybRzhBFLkqgEEgfL4Uqsd/dtrQ6wEWJWz
	eTCtUg2nT0BwuRijjhkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnJl0-00087Z-JT; Tue, 16 Jul 2019 09:28:22 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnJkh-00086t-UU
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 09:28:05 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190716092801epoutp021c3a8d4c38ddb3f6972d2dd3d0670bab~x2SDmhFWt2682826828epoutp02I
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 09:28:01 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190716092801epoutp021c3a8d4c38ddb3f6972d2dd3d0670bab~x2SDmhFWt2682826828epoutp02I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563269281;
 bh=Q5UakLD205wShaSTG+f5fz7cKkprRmkmPhAwjsEjUTQ=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=lD9Ldx/Y/mMBR6ZW5ZHRuPU029wHqBo5B/Gl632i5MyX61PfexMubcmbwALkSoSXF
 bMUaWrk6L5MI7X4zizajHkZaqJuc/lwWvz5AaitelfHSGjh3q9G18uBMSIboLgv8ri
 AjvWAfk5SYzD9z6Ei09a+KshrpFR+GFr6o89xhPA=
Received: from epsnrtp6.localdomain (unknown [182.195.42.167]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190716092800epcas1p10e3eab11167bd1f10ed9e92473413872~x2SDGgeD02702727027epcas1p1Q;
 Tue, 16 Jul 2019 09:28:00 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.154]) by
 epsnrtp6.localdomain (Postfix) with ESMTP id 45nw6j5K5rzMqYkc; Tue, 16 Jul
 2019 09:27:57 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 7C.09.04160.D989D2D5; Tue, 16 Jul 2019 18:27:57 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20190716092757epcas1p3f1040feadd8e767b7861cf8d6e95a9fe~x2SAMdMTR2981129811epcas1p3N;
 Tue, 16 Jul 2019 09:27:57 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190716092757epsmtrp2d3d0ada13ab4e98b5376d63895727349~x2SALa3b22184421844epsmtrp2k;
 Tue, 16 Jul 2019 09:27:57 +0000 (GMT)
X-AuditID: b6c32a38-b33ff70000001040-a1-5d2d989dcd69
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 C6.B5.03638.D989D2D5; Tue, 16 Jul 2019 18:27:57 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190716092756epsmtip14e25281fc922a010605e07c6c892694b~x2R-xBEP41188811888epsmtip1n;
 Tue, 16 Jul 2019 09:27:56 +0000 (GMT)
Subject: Re: [PATCH v1 13/50] clk: samsung: add DPLL rate table in Exynos5420
To: Lukasz Luba <l.luba@partner.samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <9095a5be-3002-93c6-9d08-92eb84f5c103@samsung.com>
Date: Tue, 16 Jul 2019 18:31:03 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715124417.4787-14-l.luba@partner.samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrEJsWRmVeSWpSXmKPExsWy7bCmnu7cGbqxBs+vq1ncWneO1WLjjPWs
 FvOPAFn9j18zW5w/v4Hd4mzTG3aLWw0yFpseX2O1+Nhzj9Xi8q45bBYzzu9jslh75C67xdLr
 F5ksLp5ytbjduILNonXvEXaLw2/aWS3+XdvI4iDksWbeGkaP9zda2T02repk89i8pN7j4Ls9
 TB59W1YxenzeJBfAHpVtk5GamJJapJCal5yfkpmXbqvkHRzvHG9qZmCoa2hpYa6kkJeYm2qr
 5OIToOuWmQP0hJJCWWJOKVAoILG4WEnfzqYov7QkVSEjv7jEVim1ICWnwLJArzgxt7g0L10v
 OT/XytDAwMgUqDAhO2PJit+sBcuFKg4uaGJtYJzI38XIySEhYCKx71ojYxcjF4eQwA5GiXXT
 LrJCOJ8YJWZPWwOV+cYo8fXsS/YuRg6wlgOXrSHie4Hij3+wQzjvGSWmvTvJDDJXWMBfYsHl
 fYwgtojAOUaJjqfSIDazwDQmiVnzREFsNgEtif0vbrCB2PwCihJXfzwGq+cVsJM4sPAh2BwW
 AVWJC99awGpEBSIkTh2ZxwJRIyhxcuYTFpCDOAUcJN6eEoAYLy5x68l8JghbXqJ562xmkNsk
 BE6xS7SsfsIG8bOLxK+V/1kgbGGJV8e3sEPYUhKf3+2FqqmWWHnyCBtEcwejxJb9F1ghEsYS
 +5dOZgJZzCygKbF+lz5EWFFi5++5jBCL+STefe1hhQQWr0RHmxBEibLE5Qd3mSBsSYnF7Z1s
 ExiVZiH5ZhaSF2YheWEWwrIFjCyrGMVSC4pz01OLDQtMkCN7EyM4fWtZ7GDcc87nEKMAB6MS
 D++JPTqxQqyJZcWVuYcYJTiYlUR4bb9qxwrxpiRWVqUW5ccXleakFh9iNAUG9kRmKdHkfGBu
 ySuJNzQ1MjY2tjAxNDM1NFQS5533RzNWSCA9sSQ1OzW1ILUIpo+Jg1OqgdH4s3D9tuJtB1qv
 R93Sd3zMyu76VLQn1SP9acF20/BL+juXuH94vSjoj+Ph6q/VIVqTfpmt6/7CszA52+rgrvQF
 1Ybcp29vPX9rWkWGc9MfufCn4j2lVrW5Lf26rwL4Aqo+JuopG62ubF0nKq3GZGvde0B2wbwd
 m0zn+roWtRlFdJ47pNdbrcRSnJFoqMVcVJwIABIUyHT1AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Ra0hTUQDHOfexXafD22Z5fKC4iGLT5aIPJywRenAhgj5aMeySFzXdg101
 jSKzNBJRM/AxSw2sRNS5aeJqpnMma+FjaiaTnpMIXxWyiB6S2wj27Qf/3++cA4fCJa+IWCpP
 W8gZtGyBTCAiBh2yhJT7TSnq1KX+SOTpnSKRuclEorbxbar1ruJoerpPiCbL14TIUxaPLN4F
 En2vfkeiuaf3BKhp+jmGesbfCtHDN24MuV3H0dL1TgGqGB4XIsfaLRJtLZiJDAnT3doNmK+L
 FULG0nVbwPR3XGPsGzaMqRnoAsymJeG08KzocDZXkFfMGfannxfldnT+JvWPJSX29nKyDNyJ
 rAIUBemDcHQurQqEURL6GYAt9n1+hnQMbHC/wIOKFDocfBUQbSvrALorTQK/I6VPwcHJ98A/
 RNFTANb8nRT6B5xuwKDThAcPdQLY2XjIzwJaDke+LAbiSDoJvv7pBX4W0+lw9MHHgE/Qe+DM
 j5sBZyedCesXrETQ2QFfNi8T/geF0Rlw3UUHr9oL/7TO4kGOhp7lNizIifDGkxa8DkiNIbUx
 JDGGJMaQpB0QXSCG0/OaHA2v0h/QcpeUPKvhi7Q5ygs6jQUEvlguHwJOZ9YYoCkgixA7bclq
 CckW86WaMQApXBYlPuJTqCXibLb0MmfQZRmKCjh+DMRRhCxanKibOCOhc9hCLp/j9Jzh/4pR
 YbFlgBlumEnivFm9qQrz7jjTmqfomzJNcwK3dobXXe3ZtKrO/RqaT8ddZl1+ychK8tS8KyK8
 /mj8AP6pBqu9i/s+9CtVmvoIpBY/Emdi1ZTONHtyKxe1snE2naLxmC/Rro3yWVfVldI+x/rE
 Y5+CihY098pXFq/kf7Zd3LUhI/hcViXHDTz7D0D1eH7eAgAA
X-CMS-MailID: 20190716092757epcas1p3f1040feadd8e767b7861cf8d6e95a9fe
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190715124444eucas1p2683c9896e8be45d6a0cd4afeb681a2ea
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124444eucas1p2683c9896e8be45d6a0cd4afeb681a2ea@eucas1p2.samsung.com>
 <20190715124417.4787-14-l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_022804_171222_FD11073B 
X-CRM114-Status: GOOD (  23.24  )
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

SGksCgpBbHNvLCB5b3UgYmV0dGVyIHRvIG1lcmdlIHBhdGNoMTMvcGF0Y2gxNS9wYXRjaDE2IHRv
IG9uZSBwYXRjaAppbiBvcmRlciB0byBhZGQgdGhlIFBMTCB0YWJsZSBmb3IgRFBMTC9NUExML1NQ
TEwuCgpBbmQgSSBoYXZlIGEgcXVlc3Rpb24uIEFyZSB0aGVyZSBhbnkgdXNlLWNhc2UgdG8gY2hh
bmdlCnRoZSBQTEwgZnJlcXVlbmN5IGZvciBEUExML01QTEwvU1BMTD8KCk9uIDE5LiA3LiAxNS4g
7Jik7ZuEIDk6NDMsIEx1a2FzeiBMdWJhIHdyb3RlOgo+IFRoZSBEUExMIGhhcyBmaXhlZCBmcmVx
dWVuY3kgbGVmdCBieSB0aGUgYm9vdGxvYWRlciBhbmQgaXQgaXMgbm90IHBvc3NpYmxlCj4gdG8g
Y2hhbmdlIGl0LiBXaXRoIHRoaXMgcGF0Y2ggdGhlIERQTEwgZ2V0cyByYXRlIHRhYmxlIHRoZSBz
YW1lIGZvciB0aGUKPiB3aG9sZSAgUExMIGZhbWlseSAoc2ltaWxhciBhcyBBUExMLCBLUExMIGFj
Y29yZGluZyB0byBSTSkgc28gdGhlIGZyZXF1ZW5jeQo+IG1pZ2h0IGJlIGNoYW5nZWQgdG8gb25l
IG9mIHRoZSB2YWx1ZXMgZGVmaW5lZCB0aGVyZS4KPiBJdCBpcyBuZWVkZWQgZm9yIGZ1cnRoZXIg
cGF0Y2hlcyB3aGljaCBjaGFuZ2UgdGhlIERQTEwgZnJlcXVlbmN5IHRvIGZlZWQKPiB0aGUgY2xv
Y2tzIHdpdGggcHJvcGVyIGJhc2UuCj4gSXQgYWxzbyBzZXRzIENMS19JU19DUklUSUNBTCBmb3Ig
U0NMS19EUExMIGR1ZSB0byBzb21lIGRyaXZlcnMgd2hpY2ggY291bGQKPiBkaXNhYmxlIG1hc3Rl
ciBjbG9jaywgd2hpY2ggaXMgdGhlbiBwb3B1bGF0ZWQgaGlnaGVyIGFuZCB0cmllcyB0byBkaXNh
YmxlCj4gUExMLCB3aGljaCBjYXN1ZXMgc3lzdGVtIGNyYXNoLiBUaGUgZmxhZyBpcyBuZWVkZWQg
Zm9yIHRoaXMga2luZCBvZiB1c2UKPiBjYXNlcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBMdWthc3og
THViYSA8bC5sdWJhQHBhcnRuZXIuc2Ftc3VuZy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvY2xrL3Nh
bXN1bmcvY2xrLWV4eW5vczU0MjAuYyB8IDQgKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3Nh
bXN1bmcvY2xrLWV4eW5vczU0MjAuYyBiL2RyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0
MjAuYwo+IGluZGV4IDdmODIyMTUyNzYzMy4uMjM5NWIwMmNlOGM1IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0MjAuYwo+ICsrKyBiL2RyaXZlcnMvY2xrL3Nh
bXN1bmcvY2xrLWV4eW5vczU0MjAuYwo+IEBAIC02OTQsNyArNjk0LDggQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBzYW1zdW5nX211eF9jbG9jayBleHlub3M1eF9tdXhfY2xrc1tdIF9faW5pdGNvbnN0
ID0gewo+ICAJTVVYKDAsICJtb3V0X3NjbGtfcnBsbCIsIG1vdXRfcnBsbF9wLCBTUkNfVE9QNiwg
MTYsIDEpLAo+ICAJTVVYX0YoQ0xLX01PVVRfRVBMTCwgIm1vdXRfc2Nsa19lcGxsIiwgbW91dF9l
cGxsX3AsIFNSQ19UT1A2LCAyMCwgMSwKPiAgCQkJQ0xLX1NFVF9SQVRFX1BBUkVOVCwgMCksCj4g
LQlNVVgoMCwgIm1vdXRfc2Nsa19kcGxsIiwgbW91dF9kcGxsX3AsIFNSQ19UT1A2LCAyNCwgMSks
Cj4gKwlNVVhfRihDTEtfTU9VVF9TQ0xLX0RQTEwsICJtb3V0X3NjbGtfZHBsbCIsIG1vdXRfZHBs
bF9wLAo+ICsJCQlTUkNfVE9QNiwgMjQsIDEsIENMS19JU19DUklUSUNBTCwgMCksCj4gIAlNVVgo
MCwgIm1vdXRfc2Nsa19jcGxsIiwgbW91dF9jcGxsX3AsIFNSQ19UT1A2LCAyOCwgMSksCj4gIAo+
ICAJTVVYKENMS19NT1VUX1NXX0FDTEs0MDBfSVNQLCAibW91dF9zd19hY2xrNDAwX2lzcCIsCj4g
QEAgLTE1MTQsNiArMTUxNSw3IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBleHlub3M1eF9jbGtfaW5p
dChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAo+ICAKPiAgCWlmIChfZ2V0X3JhdGUoImZpbl9wbGwi
KSA9PSAyNCAqIE1IWikgewo+ICAJCWV4eW5vczV4X3BsbHNbYXBsbF0ucmF0ZV90YWJsZSA9IGV4
eW5vczU0MjBfcGxsMjU1MHhfMjRtaHpfdGJsOwo+ICsJCWV4eW5vczV4X3BsbHNbZHBsbF0ucmF0
ZV90YWJsZSA9IGV4eW5vczU0MjBfcGxsMjU1MHhfMjRtaHpfdGJsOwo+ICAJCWV4eW5vczV4X3Bs
bHNbZXBsbF0ucmF0ZV90YWJsZSA9IGV4eW5vczU0MjBfZXBsbF8yNG1oel90Ymw7Cj4gIAkJZXh5
bm9zNXhfcGxsc1trcGxsXS5yYXRlX3RhYmxlID0gZXh5bm9zNTQyMF9wbGwyNTUweF8yNG1oel90
Ymw7Cj4gIAl9Cj4gCgoKLS0gCkJlc3QgUmVnYXJkcywKQ2hhbndvbyBDaG9pClNhbXN1bmcgRWxl
Y3Ryb25pY3MKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
