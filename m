Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC455DAD3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 03:29:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iABkw/Rn6ZrgDXaqnKvJCpOvaplhdI4+A1ui46E4/8o=; b=CAgRVwsJZAqZWz
	hqFY49/c2DC4+mEdBYEz4GoZwg9ATW55/u/Zhf9t4RAWpsNlv3F06j8aP7qa2XqQmMbzhWTRgJA/u
	ITx2BbcvA84EFQ59RNEBDW1tukutTxeR0z83D5pqCvWZrFzsoAy0idkdCyNh0Ecfnk53XLy/feQml
	r/DHJNRLAeMiQ8J66CPjgtWjTrBiPigert7LCq3SzYyozfmIwieN20VS6feDPG73FKqkotVakyA6I
	FK/PwxRgWrA7r2AXm+mDeXmvh9IFj8vJ9A8F2KPmEA+ItbcPEgjRw5ldJR4vygSJA/mmZig5I3nw/
	7nzC67MZOiODrJ7c4OFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiU4z-0004lh-Ci; Wed, 03 Jul 2019 01:29:01 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiU4R-0004kt-Rc
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 01:28:31 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190703012820epoutp045af7533d1c0c8bbea0086ef50b4e4b78~twWiKM2y60517705177epoutp04Z
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  3 Jul 2019 01:28:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190703012820epoutp045af7533d1c0c8bbea0086ef50b4e4b78~twWiKM2y60517705177epoutp04Z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1562117300;
 bh=0MvMxcreUuWDXQwnNIBVUQ4nBFrEQg/CxBcOkNy78MU=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=s6WgD7MMJ03VU/CQkdrQA0ltFcqlMIEjZq0XvuGlYKTzEjwRjklgTNj8m1nEtx8aI
 hCqjbrWFuxtG1wDb2YhAREWlDyqmgjwPMMPL8HothRcfjUZW1mKULXab+1bLcloM0k
 lGYhy8vwk9l85w8GPT7jcjKpwwciLjd08I6wESQk=
Received: from epsmges1p2.samsung.com (unknown [182.195.40.154]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190703012816epcas1p11c5e2100a88118b6c1720f1bb265b043~twWeIFB3c0166301663epcas1p1v;
 Wed,  3 Jul 2019 01:28:16 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 AA.B3.04142.0B40C1D5; Wed,  3 Jul 2019 10:28:16 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20190703012815epcas1p4dff08bb09b21137afbb3e1ee86860b07~twWddhyu32727027270epcas1p4l;
 Wed,  3 Jul 2019 01:28:15 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190703012815epsmtrp2fba7ea49941abbd61b8ab83c572e1ad9~twWdcWjHU1781817818epsmtrp26;
 Wed,  3 Jul 2019 01:28:15 +0000 (GMT)
X-AuditID: b6c32a36-cf9ff7000000102e-4e-5d1c04b0491b
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 9B.B0.03662.FA40C1D5; Wed,  3 Jul 2019 10:28:15 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190703012815epsmtip1ce9af017213817fab4ff40f44793d347~twWdFkcIV1055210552epsmtip1e;
 Wed,  3 Jul 2019 01:28:15 +0000 (GMT)
Subject: Re: [RFCv2 6/8] devfreq: Add imx-devfreq driver
To: Leonard Crestez <leonard.crestez@nxp.com>, Alexandre Bailon
 <abailon@baylibre.com>, Georgi Djakov <georgi.djakov@linaro.org>, Stephen
 Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Viresh
 Kumar <viresh.kumar@linaro.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <c938c3ee-f91f-5207-76ce-f4738fb52441@samsung.com>
Date: Wed, 3 Jul 2019 10:31:03 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <5531b22cdcb056c66fc0a51b4c839df5d86049d0.1561707104.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpll+LIzCtJLcpLzFFi42LZdlhTX3cDi0yswdPFrBZfT59itFh26Sij
 xZepu5gtts9Mtnh5SNNi4+bbLBbT925is1g1dSeLxfnzG9gtzja9YbdYcfcjq8Wmx9dYLT72
 3GO16Pq1ktnic+8RRouLp1wtbjeuYLNYfe4gm8XcL1OZLboO/WWz+HdtI4vFiy3iFsfXhlts
 /OrhIOHx/kYru8eCTaUem1Z1snncubaHzWPzknqPje92MHn0/zXw6NuyitHj8ya5AM6obJuM
 1MSU1CKF1Lzk/JTMvHRbJe/geOd4UzMDQ11DSwtzJYW8xNxUWyUXnwBdt8wcoDeVFMoSc0qB
 QgGJxcVK+nY2RfmlJakKGfnFJbZKqQUpOQWWBXrFibnFpXnpesn5uVaGBgZGpkCFCdkZ/VO/
 MBW8NavYvlW2gfGwThcjJ4eEgInEnjffWbsYuTiEBHYwSnT9fMEO4XxilFhy5zgThPONEahs
 AxtMy7+O3VAtexkl5nUfZoFw3jNK9PxcBeRwcAgLWEi82JwL0iAi8Aeoe2oSSA2zQBurxKPH
 T8AmsQloSex/cQPM5hdQlLj64zEjiM0rYCexbcFiMJtFQEXi9pKtYLaoQITE5S27oGoEJU7O
 fMICYnMKxEncvtHODmIzC4hL3HoynwnClpdo3jqbGWSxhEAjh8TVv/uZIF5wkXjzeTo7hC0s
 8er4FihbSuLzu71Qb1ZLrDx5hA2iuYNRYsv+C6wQCWOJ/UsnM4F8ySygKbF+lz5EWFFi5++5
 jBA2r0TDxt9QB/FJvPvawwpSDhLvaBOCKFGWuPzgLtMERuVZSN6ZheSFWUhemIWwbAEjyypG
 sdSC4tz01GLDAiPk2N7ECM4CWmY7GBed8znEKMDBqMTD6+EnHSvEmlhWXJl7iFGCg1lJhHf/
 CslYId6UxMqq1KL8+KLSnNTiQ4ymwNCeyCwlmpwPzFB5JfGGpkbGxsYWJoZmpoaGSuK88dw3
 Y4QE0hNLUrNTUwtSi2D6mDg4pRoY9c6K5QjvvTiDue7Z5Ko1b3y+3eT6Jm74TvPOk88st/o4
 Q/d/cj2XNC0o9bFQ7bbcwh3C4fVbv6isfrakNMJjQ1da8tqOcjGZVP6Eg/Z95d/lD670PDKj
 wn5rwkaXx401nXacdl7nV+kdyzl9doO9XxTXp+W/WnjDs6Kn8z27vvaN2tTbL16uV2Ipzkg0
 1GIuKk4EALt7ICEYBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHeT1nZ5dcnTZz7zK1VhCOUlcibxfEIuF8y4LQgmVDD2q6OXbm
 LQjtouUo9UMznV3MJHTSZfMyTU3c8jpMlNStlYRKLkjNdBSRlnMEfvs9/+f/ez49HEywiO/k
 pKu0tEalyJQQPLzVJgk5+BLfJY9c9AiRxz4E0LOxXoBW9K8xZKlKRl+tYcjU5MLR/S4zgYz6
 dhyNjLxio+Hr39io/tMSC5lnJlho6c4UC+l+N2Bo+e5bgEaH4pDrWj2BGt/1EOjhih5DOusq
 gdYmTDhyN4tQ//MEZPJQsZBadBSxqRpzNmU2lhDUx4lOgmqqK6BMC21+VNlqJFXabATUsjkk
 nnuBdzyFzkzPoTURMZd4aWX6FT/1fHSepSW4ENgO6ACXA8kouHa7g+VlAdkBYN/fMF8uhhWj
 vZgOcNZZCG02Rgd465V5AJef9LG9uZBE0N2k9OYB5BqA99rn2N4BI4tZ8PP7HyyfMb1+tMsJ
 vFcJUgq73Q7Cy9vIPXD818xGzidjYGvN0w3GyX3QVdeywTvIRFhaXE34OtvhYNUs7mUueRG6
 HLfYXsbI/fDPozHMxyL4Yfaxn49D4Y2WaqwcCA2bdMMmxbBJMWxSagBuBGJazShTlYxMfUhF
 54YzCiWTrUoNT85SmsHGG0ilbWBgIMkKSA6Q+PNr4oPkApYih8lXWgHkYJIAfne9WC7gpyjy
 r9CarCRNdibNWEEQB5eI+KFZfecFZKpCS2fQtJrW/N/6cbg7C8HVIhl3b6A071hK7OGeRLl7
 Wp/jlAxGnGqLkTZG2efKtXFfHNoBbUJfoJtHywoqe4LFqgdHG0qmNJWyMOek1R5SX3vujOq7
 xaOs6xw36LYs+CsrDLnO+Oifa/wT5hc35bW7h0UZJ8++KS2wqE9vFUxS9ory8cuMCPccKe4v
 kuBMmkImxTSM4h9o3GWbAgMAAA==
X-CMS-MailID: 20190703012815epcas1p4dff08bb09b21137afbb3e1ee86860b07
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
X-CPGSPASS: Y
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190628074015epcas5p262581ad38abeceb9e496cbc1094d4fef
References: <cover.1561707104.git.leonard.crestez@nxp.com>
 <CGME20190628074015epcas5p262581ad38abeceb9e496cbc1094d4fef@epcas5p2.samsung.com>
 <5531b22cdcb056c66fc0a51b4c839df5d86049d0.1561707104.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_182828_717952_1F848353 
X-CRM114-Status: GOOD (  27.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <Anson.Huang@nxp.com>, "Rafael J.
 Wysocki" <rafael@kernel.org>, linux-pm@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, "cpgs \(cpgs@samsung.com\)" <cpgs@samsung.com>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGVvbmFyZCwKCk9uIDE5LiA2LiAyOC4g7Jik7ZuEIDQ6MzksIExlb25hcmQgQ3Jlc3RleiB3
cm90ZToKPiBBZGQgaW5pdGlhbCBzdXBwb3J0IGZvciBmcmVxdWVuY3kgc3dpdGNoZXMgb24gcGll
Y2VzIG9mIHRoZSBpbXgKPiBpbnRlcmNvbm5lY3QgZmFicmljLgo+IAo+IFVzZXMgY2xrX3NldF9t
aW5fcmF0ZSBzbyB0aGF0IG90aGVyIHN1YnN5dGVtcyBjYW4gYWxzbyBpbXBvc2UgbWluaW11bQo+
IHJhdGUgcmVxdWVzdHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTGVvbmFyZCBDcmVzdGV6IDxsZW9u
YXJkLmNyZXN0ZXpAbnhwLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9kZXZmcmVxL0tjb25maWcgICAg
ICAgfCAgMTAgKysrCj4gIGRyaXZlcnMvZGV2ZnJlcS9NYWtlZmlsZSAgICAgIHwgICAxICsKPiAg
ZHJpdmVycy9kZXZmcmVxL2lteC1kZXZmcmVxLmMgfCAxNDIgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDE1MyBpbnNlcnRpb25zKCspCj4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2RldmZyZXEvaW14LWRldmZyZXEuYwo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2RldmZyZXEvS2NvbmZpZyBiL2RyaXZlcnMvZGV2ZnJlcS9LY29uZmln
Cj4gaW5kZXggZjNiMjQyOTg3ZmQ5Li4zYTdjNjI2NWNhMmYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9kZXZmcmVxL0tjb25maWcKPiArKysgYi9kcml2ZXJzL2RldmZyZXEvS2NvbmZpZwo+IEBAIC05
MCwxMCArOTAsMjAgQEAgY29uZmlnIEFSTV9FWFlOT1NfQlVTX0RFVkZSRVEKPiAgCSAgRWFjaCBt
ZW1vcnkgYnVzIGdyb3VwIGNvdWxkIGNvbnRhaW4gbWFueSBtZW1vYnkgYnVzIGJsb2NrLiBJdCBy
ZWFkcwo+ICAJICBQUE1VIGNvdW50ZXJzIG9mIG1lbW9yeSBjb250cm9sbGVycyBieSB1c2luZyBE
RVZGUkVRLWV2ZW50IGRldmljZQo+ICAJICBhbmQgYWRqdXN0cyB0aGUgb3BlcmF0aW5nIGZyZXF1
ZW5jaWVzIGFuZCB2b2x0YWdlcyB3aXRoIE9QUCBzdXBwb3J0Lgo+ICAJICBUaGlzIGRvZXMgbm90
IHlldCBvcGVyYXRlIHdpdGggb3B0aW1hbCB2b2x0YWdlcy4KPiAgCj4gK2NvbmZpZyBBUk1fSU1Y
X0RFVkZSRVEKPiArCXRyaXN0YXRlICJpLk1YIERFVkZSRVEgRHJpdmVyIgo+ICsJZGVwZW5kcyBv
biBBUkNIX01YQwoKWW91IGRvbid0IG5lZWQgdG8gYWRkICdDT01QSUxFX1RFU1QnIGFzIGZvbGxv
d2luZz8KCWRlcGVuZHMgb24gQVJDSF9NWEMgfHwgQ09NUElMRV9URVNUCgo+ICsJc2VsZWN0IERF
VkZSRVFfR09WX1VTRVJTUEFDRQo+ICsJc2VsZWN0IFBNX09QUAo+ICsJaGVscAo+ICsJICBUaGlz
IGFkZHMgdGhlIERFVkZSRVEgZHJpdmVyIGZvciB0aGUgVGVncmEgZmFtaWx5IG9mIFNvQ3MuCj4g
KwkgIEl0IHJlYWRzIEFDVE1PTiBjb3VudGVycyBvZiBtZW1vcnkgY29udHJvbGxlcnMgYW5kIGFk
anVzdHMgdGhlCj4gKwkgIG9wZXJhdGluZyBmcmVxdWVuY2llcyBhbmQgdm9sdGFnZXMgd2l0aCBP
UFAgc3VwcG9ydC4KCk1heWJlLCB5b3UgcmVmZXJyZWQgdG8gdGhlIGRlc2NyaXB0aW9uIG9mIEFS
TV9URUdSQV9ERVZGUkVRLgpZb3UgaGF2ZSB0byBtb2RpZnkgaXQgYWNjb3JkaW5nIHRvIHRoZSBy
b2xlIG9mIElNWF9ERVZGUkVRLgoKPiArCj4gIGNvbmZpZyBBUk1fVEVHUkFfREVWRlJFUQo+ICAJ
dHJpc3RhdGUgIk5WSURJQSBUZWdyYTMwLzExNC8xMjQvMjEwIERFVkZSRVEgRHJpdmVyIgo+ICAJ
ZGVwZW5kcyBvbiBBUkNIX1RFR1JBXzN4X1NPQyB8fCBBUkNIX1RFR1JBXzExNF9TT0MgfHwgXAo+
ICAJCUFSQ0hfVEVHUkFfMTMyX1NPQyB8fCBBUkNIX1RFR1JBXzEyNF9TT0MgfHwgXAo+ICAJCUFS
Q0hfVEVHUkFfMjEwX1NPQyB8fCBcCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9NYWtl
ZmlsZSBiL2RyaXZlcnMvZGV2ZnJlcS9NYWtlZmlsZQo+IGluZGV4IDMzOGFlODQ0MGRiNi4uYzI0
NjNlZDRjOTM0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9NYWtlZmlsZQo+ICsrKyBi
L2RyaXZlcnMvZGV2ZnJlcS9NYWtlZmlsZQo+IEBAIC03LDEwICs3LDExIEBAIG9iai0kKENPTkZJ
R19ERVZGUkVRX0dPVl9QT1dFUlNBVkUpCSs9IGdvdmVybm9yX3Bvd2Vyc2F2ZS5vCj4gIG9iai0k
KENPTkZJR19ERVZGUkVRX0dPVl9VU0VSU1BBQ0UpCSs9IGdvdmVybm9yX3VzZXJzcGFjZS5vCj4g
IG9iai0kKENPTkZJR19ERVZGUkVRX0dPVl9QQVNTSVZFKQkrPSBnb3Zlcm5vcl9wYXNzaXZlLm8K
PiAgCj4gICMgREVWRlJFUSBEcml2ZXJzCj4gIG9iai0kKENPTkZJR19BUk1fRVhZTk9TX0JVU19E
RVZGUkVRKQkrPSBleHlub3MtYnVzLm8KPiArb2JqLSQoQ09ORklHX0FSTV9JTVhfREVWRlJFUSkJ
CSs9IGlteC1kZXZmcmVxLm8KPiAgb2JqLSQoQ09ORklHX0FSTV9SSzMzOTlfRE1DX0RFVkZSRVEp
CSs9IHJrMzM5OV9kbWMubwo+ICBvYmotJChDT05GSUdfQVJNX1RFR1JBX0RFVkZSRVEpCQkrPSB0
ZWdyYTMwLWRldmZyZXEubwo+ICBvYmotJChDT05GSUdfQVJNX1RFR1JBMjBfREVWRlJFUSkJKz0g
dGVncmEyMC1kZXZmcmVxLm8KPiAgCj4gICMgREVWRlJFUSBFdmVudCBEcml2ZXJzCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9pbXgtZGV2ZnJlcS5jIGIvZHJpdmVycy9kZXZmcmVxL2lt
eC1kZXZmcmVxLmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4u
YWE4ODY4ZDMyZjIyCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvZGV2ZnJlcS9pbXgt
ZGV2ZnJlcS5jCj4gQEAgLTAsMCArMSwxNDIgQEAKPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IEdQTC0yLjAKPiArLyoKPiArICogQ29weXJpZ2h0IChjKSAyMDE5IE5YUAo+ICsgKi8KPiAr
Cj4gKyNpbmNsdWRlIDxsaW51eC9jbGsuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2RldmZyZXEuaD4K
PiArI2luY2x1ZGUgPGxpbnV4L2RldmZyZXEtZXZlbnQuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2Rl
dmljZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9v
Zl9kZXZpY2UuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3BtX29wcC5oPgo+ICsjaW5jbHVkZSA8bGlu
dXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9zbGFiLmg+Cj4gKwo+ICtz
dHJ1Y3QgaW14X2RldmZyZXEgewo+ICsJc3RydWN0IGRldmZyZXFfZGV2X3Byb2ZpbGUgcHJvZmls
ZTsKPiArCXN0cnVjdCBkZXZmcmVxICpkZXZmcmVxOwo+ICsJc3RydWN0IGNsayAqY2xrOwo+ICt9
Owo+ICsKPiArc3RhdGljIGludCBpbXhfZGV2ZnJlcV90YXJnZXQoc3RydWN0IGRldmljZSAqZGV2
LCB1bnNpZ25lZCBsb25nICpmcmVxLCB1MzIgZmxhZ3MpCj4gK3sKPiArCXN0cnVjdCBpbXhfZGV2
ZnJlcSAqcHJpdiA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+ICsJc3RydWN0IGRldl9wbV9vcHAg
Km5ld19vcHA7Cj4gKwl1bnNpZ25lZCBsb25nIG5ld19mcmVxOwo+ICsJaW50IHJldDsKPiArCj4g
KwluZXdfb3BwID0gZGV2ZnJlcV9yZWNvbW1lbmRlZF9vcHAoZGV2LCBmcmVxLCBmbGFncyk7Cj4g
KwlpZiAoSVNfRVJSKG5ld19vcHApKSB7Cj4gKwkJcmV0ID0gUFRSX0VSUihuZXdfb3BwKTsKPiAr
CQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBnZXQgcmVjb21tZW5kZWQgb3BwOiAlZFxuIiwgcmV0
KTsKPiArCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsJbmV3X2ZyZXEgPSBkZXZfcG1fb3BwX2dldF9m
cmVxKG5ld19vcHApOwo+ICsJZGV2X3BtX29wcF9wdXQobmV3X29wcCk7Cj4gKwo+ICsJcmV0ID0g
Y2xrX3NldF9taW5fcmF0ZShwcml2LT5jbGssIG5ld19mcmVxKTsKPiArICAgICAgICBpZiAocmV0
KQoKRml4IHRoZSBpbmRlbnRhdGlvbi4KCj4gKwkJcmV0dXJuIHJldDsKPiArCj4gKwlyZXQgPSBj
bGtfc2V0X3JhdGUocHJpdi0+Y2xrLCAwKTsKPiArCWlmIChyZXQpIHsKPiArCQljbGtfc2V0X21p
bl9yYXRlKHByaXYtPmNsaywgcHJpdi0+ZGV2ZnJlcS0+cHJldmlvdXNfZnJlcSk7Cj4gKwkJcmV0
dXJuIHJldDsKPiArCX0KPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIGludCBp
bXhfZGV2ZnJlcV9nZXRfY3VyX2ZyZXEoc3RydWN0IGRldmljZSAqZGV2LCB1bnNpZ25lZCBsb25n
ICpmcmVxKQo+ICt7Cj4gKwlzdHJ1Y3QgaW14X2RldmZyZXEgKnByaXYgPSBkZXZfZ2V0X2RydmRh
dGEoZGV2KTsKPiArCj4gKwkqZnJlcSA9IGNsa19nZXRfcmF0ZShwcml2LT5jbGspOwo+ICsKPiAr
CXJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IGlteF9kZXZmcmVxX2dldF9kZXZfc3Rh
dHVzKHN0cnVjdCBkZXZpY2UgKmRldiwKPiArCQlzdHJ1Y3QgZGV2ZnJlcV9kZXZfc3RhdHVzICpz
dGF0KQo+ICt7Cj4gKwlzdHJ1Y3QgaW14X2RldmZyZXEgKnByaXYgPSBkZXZfZ2V0X2RydmRhdGEo
ZGV2KTsKPiArCj4gKwlzdGF0LT5idXN5X3RpbWUgPSAwOwo+ICsJc3RhdC0+dG90YWxfdGltZSA9
IDA7Cj4gKwlzdGF0LT5jdXJyZW50X2ZyZXF1ZW5jeSA9IGNsa19nZXRfcmF0ZShwcml2LT5jbGsp
Owo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgdm9pZCBpbXhfZGV2ZnJlcV9l
eGl0KHN0cnVjdCBkZXZpY2UgKmRldikKPiArewo+ICsJcmV0dXJuIGRldl9wbV9vcHBfb2ZfcmVt
b3ZlX3RhYmxlKGRldik7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgaW14X2RldmZyZXFfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiArewo+ICsJc3RydWN0IGRldmljZSAqZGV2
ID0gJnBkZXYtPmRldjsKPiArCXN0cnVjdCBpbXhfZGV2ZnJlcSAqcHJpdjsKPiArCWludCByZXQ7
Cj4gKwo+ICsJcHJpdiA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqcHJpdiksIEdGUF9LRVJO
RUwpOwo+ICsJaWYgKCFwcml2KQo+ICsJCXJldHVybiAtRU5PTUVNOwo+ICsKPiArCXByaXYtPmNs
ayA9IGRldm1fY2xrX2dldChkZXYsIE5VTEwpOwo+ICsJaWYgKElTX0VSUihwcml2LT5kZXZmcmVx
KSkgewo+ICsJCXJldCA9IFBUUl9FUlIocHJpdi0+ZGV2ZnJlcSk7Cj4gKwkJZGV2X2VycihkZXYs
ICJmYWlsZWQgdG8gZmV0Y2ggY2xrOiAlZFxuIiwgcmV0KTsKPiArCQlyZXR1cm4gcmV0Owo+ICsJ
fQo+ICsJcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgcHJpdik7Cj4gKwo+ICsJcmV0ID0gZGV2
X3BtX29wcF9vZl9hZGRfdGFibGUoZGV2KTsKPiArCWlmIChyZXQgPCAwKSB7Cj4gKwkJZGV2X2Vy
cihkZXYsICJmYWlsZWQgdG8gZ2V0IE9QUCB0YWJsZVxuIik7Cj4gKwkJcmV0dXJuIHJldDsKPiAr
CX0KPiArCj4gKwlwcml2LT5wcm9maWxlLnBvbGxpbmdfbXMgPSAxMDAwOwo+ICsJcHJpdi0+cHJv
ZmlsZS50YXJnZXQgPSBpbXhfZGV2ZnJlcV90YXJnZXQ7Cj4gKwlwcml2LT5wcm9maWxlLmdldF9k
ZXZfc3RhdHVzID0gaW14X2RldmZyZXFfZ2V0X2Rldl9zdGF0dXM7Cj4gKwlwcml2LT5wcm9maWxl
LmV4aXQgPSBpbXhfZGV2ZnJlcV9leGl0Owo+ICsJcHJpdi0+cHJvZmlsZS5nZXRfY3VyX2ZyZXEg
PSBpbXhfZGV2ZnJlcV9nZXRfY3VyX2ZyZXE7Cj4gKwlwcml2LT5wcm9maWxlLmluaXRpYWxfZnJl
cSA9IGNsa19nZXRfcmF0ZShwcml2LT5jbGspOwo+ICsKPiArCXByaXYtPmRldmZyZXEgPSBkZXZt
X2RldmZyZXFfYWRkX2RldmljZShkZXYsICZwcml2LT5wcm9maWxlLAo+ICsJCQkJCQlERVZGUkVR
X0dPVl9VU0VSU1BBQ0UsCj4gKwkJCQkJCU5VTEwpOwo+ICsJaWYgKElTX0VSUihwcml2LT5kZXZm
cmVxKSkgewo+ICsJCXJldCA9IFBUUl9FUlIocHJpdi0+ZGV2ZnJlcSk7Cj4gKwkJZGV2X2Vycihk
ZXYsICJmYWlsZWQgdG8gYWRkIGRldmZyZXEgZGV2aWNlOiAlZFxuIiwgcmV0KTsKPiArCQlnb3Rv
IGVycl9yZW1vdmVfdGFibGU7Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gKwo+ICtlcnJfcmVt
b3ZlX3RhYmxlOgo+ICsJZGV2X3BtX29wcF9vZl9yZW1vdmVfdGFibGUoZGV2KTsKPiArCXJldHVy
biByZXQ7Cj4gK30KPiArCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGlteF9k
ZXZmcmVxX29mX21hdGNoW10gPSB7Cj4gKwl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg4bW0tZGRy
YyIsIH0sCj4gKwl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg4bW0tbm9jIiwgfSwKPiArCXsgLmNv
bXBhdGlibGUgPSAiZnNsLGlteDhtbS1uaWMiLCB9LAo+ICsJeyAvKiBzZW50aW5lbCAqLyB9LAo+
ICt9Owo+ICtNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBpbXhfZGV2ZnJlcV9vZl9tYXRjaCk7Cj4g
Kwo+ICtzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBpbXhfZGV2ZnJlcV9wbGF0ZHJ2ID0g
ewo+ICsJLnByb2JlCQk9IGlteF9kZXZmcmVxX3Byb2JlLAo+ICsJLmRyaXZlciA9IHsKPiArCQku
bmFtZQk9ICJkZXZmcmVxLWlteCIsCj4gKwkJLm9mX21hdGNoX3RhYmxlID0gb2ZfbWF0Y2hfcHRy
KGlteF9kZXZmcmVxX29mX21hdGNoKSwKPiArCX0sCj4gK307Cj4gK21vZHVsZV9wbGF0Zm9ybV9k
cml2ZXIoaW14X2RldmZyZXFfcGxhdGRydik7Cj4gKwo+ICtNT0RVTEVfREVTQ1JJUFRJT04oIkdl
bmVyaWMgaS5NWCBidXMgZnJlcXVlbmN5IGRyaXZlciIpOwo+ICtNT0RVTEVfTElDRU5TRSgiR1BM
IHYyIik7Cj4gCgpXaHkgZG9uJ3QgeW91IGFkZCB0aGUgYXV0aG9yIGluZm9ybWF0aW9uPwoKQW5k
IHdoZW4geW91IGFyZSBzZW5kaW5nIHRoZSBwYXRjaCwgeW91IGJldHRlcgp0byB1c2UgZ2V0X21h
aW50YWluZXIucGwgc2NyaXB0IHRvIGNvbnRhaW4KdGhlIHJlbGF0ZWQgYWxsIG1haW50YWluZXJz
L3Jldmlld2Vycy4KCgotLSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVj
dHJvbmljcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
