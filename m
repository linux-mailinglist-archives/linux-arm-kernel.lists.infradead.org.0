Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 550DC125BCE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 08:01:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUgsFpIkMcAh6st5yw6BjNnCN/M/qN9R/wHWi+LUVI8=; b=ev9cpGnsrnOpPJ
	r7cMPL10jJIKQGLsVENupp4+RkPMB41y98WzPXwN0fmVu2x/eDDfIw+1rxDExkoTXkxaQfoSvH43r
	JmJrymdyHW+kG5P+L0yCrVDuGCHBc5apQWZXWoGNJuWTFl9AVq5ArSNYwrnweFtJ1LLZlfWabVDHs
	MRaJT9B3/jWhKICTmqiTxgUGv1MvckTz2wR15I57oEGWMamP1TeOffKfJCCB2rHpZuuj7lqN9u4Bu
	nPdYpXqfrEBdOC+rWdrbxLCPYl9MXRBcpPKBbyYmGS6TlRbkf590e90slcCS2KedlcfduS1FIPNWC
	Lt4oAponA3J7pCCF69Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihpoC-0007IK-8H; Thu, 19 Dec 2019 07:01:16 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihpnx-0007HA-G1
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 07:01:05 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20191219070055epoutp0288645870cda2ddf5ce32033cc4a440d6~hs6KLCaCW0916909169epoutp02k
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 07:00:55 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20191219070055epoutp0288645870cda2ddf5ce32033cc4a440d6~hs6KLCaCW0916909169epoutp02k
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576738855;
 bh=HIx0u+GLXonWEc/D1pKl4F+ZxaTvHjTPdoJKv96bCa0=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=BPS/9j/HJon1aa4ru6/FSaroYr5q/IEuZ6AKRoCkxak5HGGurhHx/+dq5FeOE9men
 cicJIeeD72EJxzq5SC5HWl7KE3hzsRQJJhhwEldyWneV6M5U4BgaNTAAVOpJb0Ba+w
 Lee4CXIhXMj7vavI2M2wtbhaIuYdqUCzOwUNljK4=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191219070054epcas1p23f66ba706d4aa80676379cd0a2d68bc4~hs6JYCQdI1363413634epcas1p2_;
 Thu, 19 Dec 2019 07:00:54 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.155]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 47djSx14r2zMqYks; Thu, 19 Dec
 2019 07:00:49 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 CC.00.51241.1202BFD5; Thu, 19 Dec 2019 16:00:49 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191219070048epcas1p264460bc8c34f18a5e262e0fb8db6eae4~hs6D_DLAk1363813638epcas1p2k;
 Thu, 19 Dec 2019 07:00:48 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191219070048epsmtrp1e3820584949126728b0e537e67473b23~hs6DsA3WJ1429414294epsmtrp1f;
 Thu, 19 Dec 2019 07:00:48 +0000 (GMT)
X-AuditID: b6c32a39-14bff7000001c829-e8-5dfb20217743
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 3D.F1.10238.0202BFD5; Thu, 19 Dec 2019 16:00:48 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191219070047epsmtip146a9180cc7de48b98459108ec9e81f3e~hs6DKp8pg0831108311epsmtip1O;
 Thu, 19 Dec 2019 07:00:47 +0000 (GMT)
Subject: Re: [PATCH RFC v6 3/9] PM / devfreq: imx: Register interconnect device
To: Leonard Crestez <leonard.crestez@nxp.com>, Chanwoo Choi
 <chanwoo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <80e1f031-b48e-c8e4-336f-1e4a643e2ff3@samsung.com>
Date: Thu, 19 Dec 2019 16:07:20 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB7023B782510853FE0FDDEFEEEE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Tf0wbZRjHfXvX6zGtnGXIa6OzPbMlI2Frx4ovCxDNGLlszWQadWqa7lJO
 yugve2URNRF/bEDVTWLIWBFHtqGlEm1LBSZgHRQpU6kwKbBuatKBUxam8kPsnLHlWMJ/n+d5
 vs/PNy+JyTolcrLC4uDsFtZEExvwrsGtOTlKxS2danpGjJa+vQjQx+NDAC02fomh+M8xgLpP
 GVDD1I84Oh0aFSNfZwxHJ/v9BPI0nsdRJOKVoO/fvCFB7qt/ipE/HhUjZ6IdQwvvhQBqmxwT
 oai7QYwWvHGAxi7uQbE33AT6dPQCgVoWGzF0tD8kQc6B2wT6L+rD0fVAFmo7G8WQb4l57CGm
 0ekGTMdHHYC5OXVUwjTXjOFMq7+K8XvqCeZKtI9gOs+9zvjme0TMidsqJjGYyRwPeACz4N9U
 Kn2+ssDIsWWcXcFZDNayCkt5Ib3vKf1uvSZPpc5R56NHaYWFNXOFdLG2NKekwpQ8Cq04wpqq
 kq5Slufp7UUFdmuVg1MYrbyjkOZsZSZbvm0bz5r5Kkv5NoPVvEutUu3QJIWHKo2Tn3XjtksF
 Lwedk6AGhLc7QRoJqZ2wKfIh4QQbSBnVA6D3j6/XjL8ATITHRYKxDOBEVwC7k9IZOQOEQD+A
 w65aTDBuAhjuHZekVBnUARipH0oySW6kXoPhz19KuTHqOxL2zlhTTFDZMHh9ikhxOqWEEytx
 kGIpVQS95xJYKhWnNsMbsdW+mdQzcKTr7TXJfXDk1DU8xWmUDjbVDIqF8tlwceUrQuAsePna
 aZHAD8O3vmheHRNSfSR0ti6vjgapYtgyv3aKDPj7cEAisBz+duLYGr8K20dChJBbB2Ag+INY
 COTCYNsHIoGV8PytFiA0uxfOL70rFupLYd0xmSB5BF765eqa/AF4traeeB/QrnXruNat4Fq3
 gmvdCq0A94D7ORtvLud4tU2z/rX9YPXDZOf3gG9GtQOAIgF9j3RlT0InE7NH+GrzAIAkRm+U
 xur+0cmkZWz1K5zdqrdXmTh+AGiS127A5JkGa/L7WRx6tWZHbm4u2qnO06jVdJaUXBnTyahy
 1sFVcpyNs9/JE5Fp8hrQpwtJvKGsXu38Ju3C4f3eg5G7DjqkvX8/eDjmnv33p1+fiOdpdzGu
 vXubdzcMTRRNKx5f9lcPL9YxmVsM+tLnaoOXPyGnZ7bOzvmalvZ1779SHO5+sced8aR8i1F9
 d/jCC+kelaSjPuP4yTkltlmqI01MybPpyrlDxbPvlJfgT7fTOG9k1dmYnWf/B2BNrNRGBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRiA+XbOzs600WkaflYuG0Ul5Y2ML7KowDiEXX9UBsuGHVRyc+yo
 ZUSu1MyVtx9WTnJWWrYi3DQvmYi7ZBo5b01p3WiaWiu1KZli1hyB/x7e93l4/7wkJizjriAT
 5SmMUi5NEhNeeJ1JLNocGDgrCa37wENTrzoAut9jAWiy+BmGHB/tANWXxKGigT4cac2dXKSv
 sePoZrOBQLriRhxZrdU89Pqyk4eq3k9wkcFh4yL1zEMMufLMAFX2d3OQraqIi1zVDoC6O6KQ
 /VIVgR51thLo9mQxhrKbzTykNs4R6I9Nj6ORWj9Uec+GIf0UvSuALlZXAfpx2WNAjw1k8+hS
 VTdOlxtSaYMul6Df2Z4TdE1FBq3/0cChC+ZC6RnTcjq/Vgdol0F0SHDCK/I0k5SYxihDdp7y
 Suh/Uo8reiPPtaj7gQq8DFEDPgmpLbDGeheogRcppJoAbB+pJTwLf3ij24KpAfmPfaDJxHqc
 7wCqGoY5bseHOgytuRaem32pC9CpGyXcEkZ1kbBL4+J5iutcOP4gE7gtggqCLSMDCxeWUmvg
 m2nHwlxA7YTVFTML13BqHXTaMfd4OXUUNlY4OB5lGWwvGcTdzKck8JbKxHUzRm2AI6oswsN+
 8O2gluPh1TDzaSlWCHw0i3LNokSzKNEsSsoBrgP+jIKVxcvYMEWYnDkbzEplbKo8PjguWWYA
 C18TtLEB9FbEGgFFAvESwXTUjETIlaax6TIjgCQm9hXYr/6WCAWnpennGWVyrDI1iWGNYCWJ
 i/0EQ/IXMUIqXprCnGEYBaP8v+WQ/BUqsO3A6NqhVsXXCWd+uGi6Tlf6EMenwpPGIkLCQ+ZE
 fZZCvt+OnIzjItnFhHmL+EjOLNlibirQCg5KTjo728Z9OZIrvyyDxujPYF/sp56IzlWVkUsS
 rNs7tIpved4x41+1+5uubV2pT88Y/Hlnd691z6Zjw/Nf2gKivRP7/NfvdWWJcTZBGhaEKVnp
 Xz/ESN8xAwAA
X-CMS-MailID: 20191219070048epcas1p264460bc8c34f18a5e262e0fb8db6eae4
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191114201049epcas5p370853a1d78584bf00d8493ce20320bf9
References: <cover.1573761527.git.leonard.crestez@nxp.com>
 <CGME20191114201049epcas5p370853a1d78584bf00d8493ce20320bf9@epcas5p3.samsung.com>
 <e0e6a1685ccdad95c9d0c922801afdda8adb9f05.1573761527.git.leonard.crestez@nxp.com>
 <4d45cd39-24df-1714-0a27-5019c1367063@samsung.com>
 <VI1PR04MB7023F511BAE7D1EDF971CC48EE510@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <60fe19c6-6e73-4133-ed7e-a13a875589c0@samsung.com>
 <VI1PR04MB7023DAC69C8B4B7CF144F29EEE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <CAGTfZH1omr9jqRv9JX+X253YardFx_B26Hm-cT8UNF2J7eC_og@mail.gmail.com>
 <VI1PR04MB7023B782510853FE0FDDEFEEEE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_230101_960660_12B2555C 
X-CRM114-Status: GOOD (  33.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="euc-kr"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvMTkvMTkgMjoxMyBBTSwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+IE9uIDE4LjEyLjIw
MTkgMTM6MDYsIENoYW53b28gQ2hvaSB3cm90ZToKPj4gMjAxObPiIDEyv/kgMTjAzyAovPYpIL/A
yMQgNzoxNCwgTGVvbmFyZCBDcmVzdGV6IDxsZW9uYXJkLmNyZXN0ZXpAbnhwLmNvbT601MDMIMDb
vLo6Cj4+PiBPbiAxNy4xMi4yMDE5IDAyOjU1LCBDaGFud29vIENob2kgd3JvdGU6Cj4+Pj4gT24g
MTIvMTcvMTkgMTI6MDAgQU0sIExlb25hcmQgQ3Jlc3RleiB3cm90ZToKPj4+Pj4gT24gMTMuMTIu
MjAxOSAwNjoyMiwgQ2hhbndvbyBDaG9pIHdyb3RlOgo+Pj4+Pj4gT24gMTEvMTUvMTkgNTowOSBB
TSwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+Pj4+Pj4+IFRoZXJlIGlzIG5vIHNpbmdsZSBkZXZp
Y2Ugd2hpY2ggY2FuIHJlcHJlc2VudCB0aGUgaW14IGludGVyY29ubmVjdC4KPj4+Pj4+PiBJbnN0
ZWFkIG9mIGFkZGluZyBhIHZpcnR1YWwgb25lIGp1c3QgbWFrZSB0aGUgbWFpbiAmbm9jIGFjdCBh
cyB0aGUKPj4+Pj4+PiBnbG9iYWwgaW50ZXJjb25uZWN0IHByb3ZpZGVyLgo+Pj4+Pj4+Cj4+Pj4+
Pj4gVGhlIGlteCBpbnRlcmNvbm5lY3QgcHJvdmlkZXIgZHJpdmVyIHdpbGwgc2NhbGUgdGhlIE5P
QyBhbmQgRERSQyBiYXNlZAo+Pj4+Pj4+IG9uIGJhbmR3aWR0aCByZXF1ZXN0LiBNb3JlIHNjYWxh
YmxlIG5vZGVzIGNhbiBiZSBhZGRlZCBpbiB0aGUgZnV0dXJlLAo+Pj4+Pj4+IGZvciBleGFtcGxl
IGZvciBhdWRpby9kaXNwbGF5L3ZwdS9ncHUgTklDcy4KPj4+Pj4+Pgo+Pj4+Pj4+IFNpZ25lZC1v
ZmYtYnk6IExlb25hcmQgQ3Jlc3RleiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+Cj4+Pj4+Pj4g
LS0tCj4+Pj4+Pj4gICAgIGRyaXZlcnMvZGV2ZnJlcS9pbXgtZGV2ZnJlcS5jIHwgMzcgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4+Pj4+PiAgICAgMSBmaWxlIGNoYW5nZWQs
IDM3IGluc2VydGlvbnMoKykKPj4+Pj4+Pgo+Pj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Rl
dmZyZXEvaW14LWRldmZyZXEuYyBiL2RyaXZlcnMvZGV2ZnJlcS9pbXgtZGV2ZnJlcS5jCj4+Pj4+
Pj4gaW5kZXggNjIwYjM0NGU4N2FhLi41ODVkMzQwYzBmNmUgMTAwNjQ0Cj4+Pj4+Pj4gLS0tIGEv
ZHJpdmVycy9kZXZmcmVxL2lteC1kZXZmcmVxLmMKPj4+Pj4+PiArKysgYi9kcml2ZXJzL2RldmZy
ZXEvaW14LWRldmZyZXEuYwo+Pj4+Pj4+IEBAIC0xNSwxMCArMTUsMTEgQEAKPj4+Pj4+PiAgICAg
c3RydWN0IGlteF9kZXZmcmVxIHsKPj4+Pj4+PiAgICAgICAgICAgICBzdHJ1Y3QgZGV2ZnJlcV9k
ZXZfcHJvZmlsZSBwcm9maWxlOwo+Pj4+Pj4+ICAgICAgICAgICAgIHN0cnVjdCBkZXZmcmVxICpk
ZXZmcmVxOwo+Pj4+Pj4+ICAgICAgICAgICAgIHN0cnVjdCBjbGsgKmNsazsKPj4+Pj4+PiAgICAg
ICAgICAgICBzdHJ1Y3QgZGV2ZnJlcV9wYXNzaXZlX2RhdGEgcGFzc2l2ZV9kYXRhOwo+Pj4+Pj4+
ICsgIHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKmljY19wZGV2Owo+Pj4+Pj4+ICAgICB9Owo+Pj4+
Pj4+Cj4+Pj4+Pj4gICAgIHN0YXRpYyBpbnQgaW14X2RldmZyZXFfdGFyZ2V0KHN0cnVjdCBkZXZp
Y2UgKmRldiwKPj4+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWdu
ZWQgbG9uZyAqZnJlcSwgdTMyIGZsYWdzKQo+Pj4+Pj4+ICAgICB7Cj4+Pj4+Pj4gQEAgLTYwLDEx
ICs2MSw0MCBAQCBzdGF0aWMgaW50IGlteF9kZXZmcmVxX2dldF9kZXZfc3RhdHVzKHN0cnVjdCBk
ZXZpY2UgKmRldiwKPj4+Pj4+PiAgICAgICAgICAgICByZXR1cm4gMDsKPj4+Pj4+PiAgICAgfQo+
Pj4+Pj4+Cj4+Pj4+Pj4gICAgIHN0YXRpYyB2b2lkIGlteF9kZXZmcmVxX2V4aXQoc3RydWN0IGRl
dmljZSAqZGV2KQo+Pj4+Pj4+ICAgICB7Cj4+Pj4+Pj4gKyAgc3RydWN0IGlteF9kZXZmcmVxICpw
cml2ID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICAgICAgICAgICAg
IGRldl9wbV9vcHBfb2ZfcmVtb3ZlX3RhYmxlKGRldik7Cj4+Pj4+Pj4gKyAgcGxhdGZvcm1fZGV2
aWNlX3VucmVnaXN0ZXIocHJpdi0+aWNjX3BkZXYpOwo+Pj4+Pj4+ICt9Cj4+Pj4+Pj4gKwo+Pj4+
Pj4+ICsvKiBpbXhfZGV2ZnJlcV9pbml0X2ljYygpIC0gcmVnaXN0ZXIgbWF0Y2hpbmcgaWNjIHBy
b3ZpZGVyIGlmIHJlcXVpcmVkICovCj4+Pj4+Pj4gK3N0YXRpYyBpbnQgaW14X2RldmZyZXFfaW5p
dF9pY2Moc3RydWN0IGRldmljZSAqZGV2KQo+Pj4+Pj4+ICt7Cj4+Pj4+Pj4gKyAgc3RydWN0IGlt
eF9kZXZmcmVxICpwcml2ID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4+Pj4+Pj4gKyAgY29uc3Qg
Y2hhciAqaWNjX2RyaXZlcl9uYW1lOwo+Pj4+Pj4+ICsKPj4+Pj4+PiArICBpZiAoIUlTX0VOQUJM
RUQoQ09ORklHX0lOVEVSQ09OTkVDVF9JTVgpKQo+Pj4+Pj4+ICsgICAgICAgICAgcmV0dXJuIDA7
Cj4+Pj4+Pgo+Pj4+Pj4gSXQgaXMgbm90IHByb3BlciB0byBjaGVjayB0aGUgZW5hYmxlIHN0YXRl
IG9mIENPTkZJR19JTlRFUkNPTk5FQ1RfSU1YIGNvbmZpZ3VyYXRpb24KPj4+Pj4+IG9uIGRldmlj
ZSBkcml2ZXIuIFdoeSBkb24ndCB5b3UgYWRkIHRoZSAnc2VsZWN0IENPTkZJR19JTlRFUkNPTk5F
Q1RfSU1YJyBvbiBLY29uZmlnPwo+Pj4+Pgo+Pj4+PiBCZWNhdXNlIGl0J3Mgb3B0aW9uYWwuCj4+
Pj4+Cj4+Pj4+IFlvdSBjYW4gZGlzYWJsZSBpbnRlcmNvbm5lY3Qgc3VwcG9ydCBhbmQganVzdCB0
d2VhayBmcmVxdWVuY2llcyB1c2luZwo+Pj4+PiB0aGUgZGV2ZnJlcSBzeXNmcyBBUEkuIEJ1dCBp
bmRlZWQgd291bGQgb25seSByZWFsbHkgYmUgdXNlZnVsIGZvciBkZWJ1Z2dpbmcuCj4+Pj4KPj4+
PiBFdmVuIGlmIGl0J3Mgb3B0aW9uYWwsIEkgZG9uJ3QgcHJlZmVyIHRvIHVzZSAnSVNfRU5BQkxF
RCcgbWFjcm8uCj4+Pj4KPj4+PiBHZW5lcmFsbHksIGFkZCBvciBkZWxldGUgdGhlIHByb3BlcnR5
IG9yIHZhbHVlIGF0IERUIGZpbGUKPj4+PiB0byBlaXRoZXIgZW5hYmxlIG9yIGRpc2FibGUgdGhl
IHNvbWUgZmVhdHVyZSBwcm92aWRlZCBieSBkZXZpY2UgZHJpdmVyCj4+Pj4gaW5zdGVhZCBvZiBj
aGVja2luZyB0aGUgY29uZmlndXJhdGlvbi4KPj4+Pgo+Pj4+IElmIHVzZXIgYWRkcyB0aGUgcHJv
cGVydHkvdmFsdWUgcmVsYXRlZCB0byBpbnRlcmNvbm5lY3QKPj4+PiBhbmQgaW14LWJ1cy5jIGNv
bmZpZ3VyYXRpb24gaXMgZW5hYmxlZCwgdGhlIGJlaGF2aW9yCj4+Pj4gcmVsYXRlZCB0byBpbnRl
cmNvbm5lY3Qgb24gaW14LWJ1cy5jIGRvZXNuJ3Qgd29yay4gSXQgbWFrZSBzb21lIGNvbmZ1c2lv
bi4KPj4+Cj4+PiBNYXliZSBJIGNvdWxkIHByaW50IGEgd2FybmluZyBpZiAjaW50ZXJjb25uZWN0
LWNlbGxzIGlzIHByZXNlbnQgYnV0Cj4+PiBDT05GSUdfSU5URVJDT05ORUNUX0lNWCBpcyBvZmY/
Cj4+Cj4+IEFjdHVhbGx5LCB1c2VyIG1pZ2h0IHRoaW5rIHRoYXQgaWYgaW14LWJ1cy5jIGlzIGVu
YWJsZWQKPj4gLCBDT05GSUdfSU5URVJDT05ORUNUX01JWCBpcyBlbmFibGVkLgo+PiBCZWNhdXNl
LCB0aGUgZHQgYmluZGluZyBkb2N1bWVudCBvZiBpbXgtYnVzLmMgd2lsbAo+PiBjb250YWluIHRo
ZSBwcm9wZXJ0eSBmb3IgaW50ZXJjb25uZWN0Lgo+Pgo+PiBJZiBkZXZpY2UgZHJpdmVyIHN1cHBv
cnQgdGhlIHZhcmlvdXMgZmVhdHVyZSwKPj4gdGhlIGRldmljZSBkcml2ZXIgaGF2ZSB0byBlbmFi
bGUgYWxsIGNvbmZpZ3VyYXRpb24KPj4gaW4gb3JkZXIgdG8gc3VwcG9ydCB0aGUgZmVhdHVyZXMg
Zm9yIHVzZXIuCj4gCj4gCj4+PiBBbiBleHBsaWNpdCBzZWxlY3QgaW4gS2NvbmZpZyBzZWVtcyBs
aWtlIGEgcG9pbnRsZXNzIGxpbWl0YXRpb24gYnV0IGluCj4+PiBwcmFjdGljZSBpdCB3b3VsZCBh
bG1vc3QgbmV2ZXIgYmUgdXNlZnVsIHRvIGJ1aWxkIG9uZSB3aXRob3V0IHRoZSBvdGhlci4KPj4K
Pj4gVGhpcyBwYXRjaCBpcyBmb3IgdGhlIHNvbWUgQ09ORklHX0lOVEVSQ09OTkVDVF9JTVggZHJp
dmVyLgo+PiBJIGRvbid0IHVuZGVyc3RhbmQgd2h5IGlzIG5vdCBtZWFuaW5nZnVsIHRvIHNlbGVj
dCBDT05GSUdfSU5URVJDT05ORUNUX0lNWAo+PiBpbiBLY29uZmlnPwo+IAo+IE9uZSBpc3N1ZSBp
cyB0aGF0IHRoZSBpbnRlcmNvbm5lY3QgZ3JhcGggaXMgZGVzY3JpYmVkIHBlci1zb2MgYW5kIHRo
ZXJlIAo+IGFyZSBwZXItc29jIGNvbmZpZyBvcHRpb25zIHdoaWxlIGlteC1idXMgYXBwbGllcyB0
byBhbGwuIFNvIHRoZSAiaWYiIAo+IGNvbmRpdGlvbiBpcyBub3Qgc3VmZmljaWVudCBlaXRoZXI7
IGlmIHRoZSBwZXItc29jIGludGVyY29ubmVjdCBkcml2ZXIgCj4gaXMgb21pdHRlZCB0aGVuIHRo
ZSBwbGF0Zm9ybSBkZXZpY2Ugd2lsbCBiZSBhZGRlZCBidXQgbm8gZHJpdmVyIHdpbGwgYmUgCj4g
ZXZlciBiZSBmb3VuZC4KPiAKPiBUaGVyZSBhcmUgd2F5cyBhcm91bmQgdGhpczogZm9yIGV4YW1w
bGUgYWxsIG9mIGlteCBpbnRlcmNvbm5lY3QgY291bGQgYmUgCj4gYnVpbHQgYXMgYSBzaW5nbGUg
bW9kdWxlLiBCdXQgSSB0aGluayBpdCdzIHJlYXNvbmFibGUgZm9yIGRldmljZXMgdG8gYmUgCj4g
cGFydGlhbGx5IGZ1bmN0aW9uYWwgaWYgc29tZSBjb25maWcgb3B0aW9ucyBhcmUgbWlzc2luZyBh
bmQgaGVhdnkgY29uZmlnIAo+IGN1c3RvbWl6YXRpb24gc29tZXRpbWVzIHJlcXVpcmVzIGEgYml0
IG9mIGRlYnVnZ2luZy4KPiAKPiBUaGVyZSBhcmUgdmFyaW91cyBpc3N1ZXMgd2hlbiBidWlsZGlu
ZyB0aGUgY3VycmVudCBzZXJpZXMgYXMgIm0iIGJ1dCBJIAo+IGNhbiBzb2x2ZSB0aGVtIGFuZCBw
b3N0IGEgZmluYWwgcGF0Y2ggd2hpY2ggc2V0cyBhbGwgdGhlIHJlbGV2YW50IAo+IG9wdGlvbnMg
b24gIm0iIGluIGFybTY0IGRlZmNvbmZpZy4gVGhlIGl0IHdpbGwgYWxsICJqdXN0IHdvcmsiIG91
dCBvZiAKPiB0aGUgYm94LgoKU29ycnkuIEFjdHVhbGx5LCBJIGRvbid0IHVuZGVyc3RhbmQgdGhl
IHJlbGF0aW9uc2hpcCBwZXJmZWN0bHkKYmV0d2VlbiBpbXgtYnVzIGFuZCBpbXgtaW50ZXJjb25u
ZWN0LiBBcyB5b3UgbWVudGlvbmVkLCBJJ2xsCmV4cGVjdCB0aGUgeW91ciBzb2x1dGlvbiBvbiBu
ZXh0IHZlcnNpb24uCgo+IAo+Pj4+IFRoZSBpbXgtYnVzLmMgaGF2ZSB0byBhZGQgdGhlICdzZWxl
Y3QgQ09ORklHX0lOVEVSQ09OTkVDVF9JTVgnCj4+Pj4gYW5kIGhhbmQgb3ZlciB0aGUgcmlnaHQg
d2hpY2ggdXNlIHRoZSBpbnRlcmNvbm5lY3QgZmVhdHVyZSBvciBub3QsIHRvIHVzZXIuCj4+Pj4K
Pj4+PiBJZiB0aGVyZSBhcmUgYW55IHJlcXVpcmVtZW50IHRvIGFkZCB0aGUgYWRkaXRpb25hbCBw
cm9wZXJ0eQo+Pj4+IHRvIGNoZWNrIHdoZXRoZXIgaW50ZXJjb25uZWN0IGZlYXR1cmUgd2lsbCBi
ZSB1c2VkIG9yIG5vdCwKPj4+PiB5b3UgY2FuIGFkZCB0aGUgZXh0cmEgcHJvcGVydHkuIEJ1dCwg
SSB0aGluayB0aGF0IGl0IGlzIGVub3VnaAo+Pj4+IHRvIGNoZWNrIHRoZSAnI2ludGVyY29ubmVj
dC1jZWxscycuCj4+Pj4KPj4+PiBJbiByZXN1bHQsIEkgdGhpbmsgdGhhdCBpdCBpcyByaWdodCB0
byBkZWNpZGUgdGhlIHVzYWdlIG9mIGZlYXR1cmUKPj4+PiBvZiBkZXZpY2UgZHJpdmVyIGJ5IHVz
ZXIgb24gRGV2aWNldHJlZS4KPj4+Pgo+Pj4+Pgo+Pj4+Pj4+ICsgIGlmICghb2ZfZ2V0X3Byb3Bl
cnR5KGRldi0+b2Zfbm9kZSwgIiNpbnRlcmNvbm5lY3QtY2VsbHMiLCAwKSkKPj4+Pj4+PiArICAg
ICAgICAgIHJldHVybiAwOwo+Pj4+Pj4+ICsKPj4+Pj4+PiArICBpY2NfZHJpdmVyX25hbWUgPSBv
Zl9kZXZpY2VfZ2V0X21hdGNoX2RhdGEoZGV2KTsKPj4+Pj4+PiArICBpZiAoIWljY19kcml2ZXJf
bmFtZSkKPj4+Pj4+PiArICAgICAgICAgIHJldHVybiAwOwo+Pj4+Pj4+ICsKPj4+Pj4+PiArICBw
cml2LT5pY2NfcGRldiA9IHBsYXRmb3JtX2RldmljZV9yZWdpc3Rlcl9kYXRhKAo+Pj4+Pj4+ICsg
ICAgICAgICAgICAgICAgICBkZXYsIGljY19kcml2ZXJfbmFtZSwgMCwgTlVMTCwgMCk7Cj4+Pj4+
Pj4gKyAgaWYgKElTX0VSUihwcml2LT5pY2NfcGRldikpIHsKPj4+Pj4+PiArICAgICAgICAgIGRl
dl9lcnIoZGV2LCAiZmFpbGVkIHRvIHJlZ2lzdGVyIGljYyBwcm92aWRlciAlczogJWxkXG4iLAo+
Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIGljY19kcml2ZXJfbmFtZSwgUFRSX0VS
Uihwcml2LT5kZXZmcmVxKSk7Cj4+Pj4+Pj4gKyAgICAgICAgICByZXR1cm4gUFRSX0VSUihwcml2
LT5kZXZmcmVxKTsKPj4+Pj4+PiArICB9Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsgIHJldHVybiAwOwo+
Pj4+Pj4+ICAgICB9Cj4+Pj4+Pj4KPj4+Pj4+PiAgICAgc3RhdGljIGludCBpbXhfZGV2ZnJlcV9w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+Pj4+Pj4+ICAgICB7Cj4+Pj4+Pj4g
ICAgICAgICAgICAgc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPj4+Pj4+PiBAQCAt
MTIwLDE4ICsxNTAsMjUgQEAgc3RhdGljIGludCBpbXhfZGV2ZnJlcV9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQo+Pj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgcmV0ID0gUFRS
X0VSUihwcml2LT5kZXZmcmVxKTsKPj4+Pj4+PiAgICAgICAgICAgICAgICAgICAgIGRldl9lcnIo
ZGV2LCAiZmFpbGVkIHRvIGFkZCBkZXZmcmVxIGRldmljZTogJWRcbiIsIHJldCk7Cj4+Pj4+Pj4g
ICAgICAgICAgICAgICAgICAgICBnb3RvIGVycjsKPj4+Pj4+PiAgICAgICAgICAgICB9Cj4+Pj4+
Pj4KPj4+Pj4+PiArICByZXQgPSBpbXhfZGV2ZnJlcV9pbml0X2ljYyhkZXYpOwo+Pj4+Pj4+ICsg
IGlmIChyZXQpCj4+Pj4+Pj4gKyAgICAgICAgICBnb3RvIGVycjsKPj4+Pj4+PiArCj4+Pj4+Pj4g
ICAgICAgICAgICAgcmV0dXJuIDA7Cj4+Pj4+Pj4KPj4+Pj4+PiAgICAgZXJyOgo+Pj4+Pj4+ICAg
ICAgICAgICAgIGRldl9wbV9vcHBfb2ZfcmVtb3ZlX3RhYmxlKGRldik7Cj4+Pj4+Pj4gICAgICAg
ICAgICAgcmV0dXJuIHJldDsKPj4+Pj4+PiAgICAgfQo+Pj4+Pj4+Cj4+Pj4+Pj4gICAgIHN0YXRp
YyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGlteF9kZXZmcmVxX29mX21hdGNoW10gPSB7Cj4+
Pj4+Pj4gKyAgeyAuY29tcGF0aWJsZSA9ICJmc2wsaW14OG1xLW5vYyIsIC5kYXRhID0gImlteDht
cS1pbnRlcmNvbm5lY3QiLCB9LAo+Pj4+Pj4+ICsgIHsgLmNvbXBhdGlibGUgPSAiZnNsLGlteDht
bS1ub2MiLCAuZGF0YSA9ICJpbXg4bW0taW50ZXJjb25uZWN0IiwgfSwKPj4+Pj4+PiArICB7IC5j
b21wYXRpYmxlID0gImZzbCxpbXg4bW4tbm9jIiwgLmRhdGEgPSAiaW14OG1uLWludGVyY29ubmVj
dCIsIH0sCj4+Pj4+Pj4gICAgICAgICAgICAgeyAuY29tcGF0aWJsZSA9ICJmc2wsaW14OG0tbm9j
IiwgfSwKPj4+Pj4+PiAgICAgICAgICAgICB7IC5jb21wYXRpYmxlID0gImZzbCxpbXg4bS1uaWMi
LCB9LAo+Pj4+Pj4+ICAgICAgICAgICAgIHsgLyogc2VudGluZWwgKi8gfSwKPj4+Pj4+PiAgICAg
fTsKPj4+Pj4+PiAgICAgTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgaW14X2RldmZyZXFfb2ZfbWF0
Y2gpOwoKCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNz
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
