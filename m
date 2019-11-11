Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6A9F6E3E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 06:46:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mFZrfMJnEqqtXybfFmHW+Y3+WVq7xzcPrVPcJ0wQnCI=; b=CrQOhxn87O4RTn
	kQZ6lxpAtFnU+Iugy69VnM2+3AFJtPvFDgfFS45vLv2ARAWCwRlQ78IM5GLaxSYf1enFyvJC1U5hf
	YdX0D359Fm8w3ZZ/hK/YbmGxs/3hbXXcsojiMjjv0uHHuaXHyD4020r8/RrijnfazoVZP1y7Av1k0
	wGLRKjpCLc/GC3M+IQCb2/rVzrKCvBacgXYCzK9HWa1VgXz91NfhAqCIXmnSJ4p4x3W85E/e9Lo8M
	LF3c7ORRnpJ6VffGmRSYmh0UBUXN+EtNeKnewnGodzyOMv2evCIM4OJIsz9L/fFqIKMFJWbXxgA2B
	bDj4zUEStunXYerk2Lbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU2XC-0000QV-TY; Mon, 11 Nov 2019 05:46:42 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU2X0-0000PY-AJ
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 05:46:32 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20191111054620epoutp034f7960331b943cb7f32d24ca31a5adc1~WBYM0l1-20971709717epoutp03w
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 05:46:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20191111054620epoutp034f7960331b943cb7f32d24ca31a5adc1~WBYM0l1-20971709717epoutp03w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1573451180;
 bh=8SfcOS7yf2L6oLFgtZFXODynh8Gmi92dVmq5MpiVnRs=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=aQl8BKFbgbd/5bTcR0tAFQILzH8IMmHboD8lrJdMCX2AoAA+aB2m7ZSH/ol+VbWkD
 GVpTi2NyXN5dAn8TT7Wo+60X0Ytg+dJPntwqYr3Cl78dfLJE9APK5rNaRLoB8sjrfc
 GJ4kNiwMmUDLExIhybQDwcCVTY5hM2bre6HD0+bM=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20191111054620epcas1p3c4a119681c299647982c91143eee0675~WBYMPwsiX3196131961epcas1p3m;
 Mon, 11 Nov 2019 05:46:20 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.153]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 47BKcV0YF7zMqYkr; Mon, 11 Nov
 2019 05:46:18 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 22.D4.04144.9A5F8CD5; Mon, 11 Nov 2019 14:46:18 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191111054617epcas1p2f6b3c5247d770ad90f07c7433a7831cd~WBYJNlIRo2148421484epcas1p2E;
 Mon, 11 Nov 2019 05:46:17 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191111054617epsmtrp112613feea260dad2ac5afba759bf35e7~WBYJMphCQ2326723267epsmtrp1H;
 Mon, 11 Nov 2019 05:46:17 +0000 (GMT)
X-AuditID: b6c32a35-2c7ff70000001030-43-5dc8f5a951c4
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 28.30.25663.8A5F8CD5; Mon, 11 Nov 2019 14:46:16 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191111054616epsmtip1a95634a5810aff2507f3fac2c7e34c50~WBYI6gtw_2988629886epsmtip10;
 Mon, 11 Nov 2019 05:46:16 +0000 (GMT)
Subject: Re: [PATCH v10 06/11] PM / QoS: Reorder pm_qos/freq_qos/dev_pm_qos
 structs
To: Leonard Crestez <leonard.crestez@nxp.com>, "Rafael J. Wysocki"
 <rjw@rjwysocki.net>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <a9d671f8-0720-84de-abc7-563cc35731a4@samsung.com>
Date: Mon, 11 Nov 2019 14:52:04 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB7023B0E36FF4C9180F6B7A6AEE620@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrLJsWRmVeSWpSXmKPExsWy7bCmnu6qrydiDebMYbI4dGwru8XX06cY
 LZZdOspoMX3vJjaL8+c3sFucbXrDbrHi7kdWi02Pr7FadP1ayWzxufcIo8XnDY8ZLW43rmCz
 WH3uIJvFmdOXgLKH/rJZbPzq4SDg8f5GK7vH7IaLLB4LNpV6bFrVyeZx59oeNo/NS+o9Nr7b
 weRx8N0eJo8tV9tZPPq2rGL0+LxJLoA7KtsmIzUxJbVIITUvOT8lMy/dVsk7ON453tTMwFDX
 0NLCXEkhLzE31VbJxSdA1y0zB+gdJYWyxJxSoFBAYnGxkr6dTVF+aUmqQkZ+cYmtUmpBSk6B
 ZYFecWJucWleul5yfq6VoYGBkSlQYUJ2RvfL6WwFazUrnh7bydbAOFGxi5GTQ0LAROLfz4ds
 XYxcHEICOxglXp54zQqSEBL4xCjx5F0qROIbo8T7M9/ZYTrO3utnh0jsZZT4M+stE4TznlFi
 34G1TCBVwgKhEidPtDGD2CICERJTH65lASliFvjHIjHv6Ro2kASbgJbE/hc3wGx+AUWJqz8e
 M4LYvAJ2Ems2fgAbxCKgKrH/6B6gGg4OUaBBp78mQpQISpyc+YQFxOYUiJW4fnoy2NnMAuIS
 t57MZ4Kw5SWat85mBtkrIXCLXeLB3rVQL7hITJ+/iRnCFpZ4dXwLVFxK4mV/G5RdLbHy5BE2
 iOYORokt+y+wQiSMJfYvncwEchCzgKbE+l36EGFFiZ2/5zJCLOaTePe1hxWkREKAV6KjTQii
 RFni8oO7TBC2pMTi9k62CYxKs5C8MwvJC7OQvDALYdkCRpZVjGKpBcW56anFhgWGyLG9iRGc
 1LVMdzBOOedziFGAg1GJh/eHzolYIdbEsuLK3EOMEhzMSiK8OyqAQrwpiZVVqUX58UWlOanF
 hxhNgYE9kVlKNDkfmHHySuINTY2MjY0tTAzNTA0NlcR5HZcvjRUSSE8sSc1OTS1ILYLpY+Lg
 lGpgPPM18XNCyN//3yRXV300env+pU/vm71h+7UzL51kap8nrbP/ddVij+tRXatf9YsLVKh8
 WVq4PsyG6duXNRc+BPiw+ax2iD60yWlK2PVVwcfkDEq3/9TSKL9u+v41p7+jtofRy7tPFlhM
 6HdTtlr1lE9Qzt1g3/ZzL53b/lzv0A/RmnTr9dOW90osxRmJhlrMRcWJALwojkcABAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrJIsWRmVeSWpSXmKPExsWy7bCSnO6KrydiDda3mVkcOraV3eLr6VOM
 FssuHWW0mL53E5vF+fMb2C3ONr1ht1hx9yOrxabH11gtun6tZLb43HuE0eLzhseMFrcbV7BZ
 rD53kM3izOlLQNlDf9ksNn71cBDweH+jld1jdsNFFo8Fm0o9Nq3qZPO4c20Pm8fmJfUeG9/t
 YPI4+G4Pk8eWq+0sHn1bVjF6fN4kF8AdxWWTkpqTWZZapG+XwJXR/XI6W8FazYqnx3ayNTBO
 VOxi5OSQEDCROHuvn72LkYtDSGA3o8S1L//YIRKSEtMuHmXuYuQAsoUlDh8uhqh5yyjxettl
 NpAaYYFQiZMn2phBbBGBCIlTncdYQYqYBRpYJe4eXw019RWTxMamL0wgVWwCWhL7X9wA6+YX
 UJS4+uMxI4jNK2AnsWbjB7AaFgFVif1H94DViAJNfb79BlSNoMTJmU9YQGxOgViJ66cns4LY
 zALqEn/mXWKGsMUlbj2ZzwRhy0s0b53NPIFReBaS9llIWmYhaZmFpGUBI8sqRsnUguLc9Nxi
 wwKjvNRyveLE3OLSvHS95PzcTYzgCNfS2sF44kT8IUYBDkYlHt4fOidihVgTy4orcw8xSnAw
 K4nw7qgACvGmJFZWpRblxxeV5qQWH2KU5mBREueVzz8WKSSQnliSmp2aWpBaBJNl4uCUamCU
 K14089eHKe/vPJhi9fnZxIXLXG+p1z+eLOMq98F0xQzmDc4szrPL9nPxC5gkGi+J/vaCQ3Rt
 9+YqFT4TZ5WFiWdnrzN4V3IsTlD6acLeT4e+CRvydzSJ3jzy9ffMj2V2rYfXTMyYv2Uu8/db
 rhFZvjGtB5bNlora5XBxTmae++7aLvmWwLWiSizFGYmGWsxFxYkABfDlf+wCAAA=
X-CMS-MailID: 20191111054617epcas1p2f6b3c5247d770ad90f07c7433a7831cd
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191031213442epcas1p41dc9214e98c05c634647ef06cdd0a7f3
References: <cover.1572556786.git.leonard.crestez@nxp.com>
 <CGME20191031213442epcas1p41dc9214e98c05c634647ef06cdd0a7f3@epcas1p4.samsung.com>
 <254e9ed653c7d9d866a860673629d02351c1afd8.1572556786.git.leonard.crestez@nxp.com>
 <072ef916-1753-ddc9-0fe8-7704b85def7a@samsung.com>
 <VI1PR04MB7023B0E36FF4C9180F6B7A6AEE620@VI1PR04MB7023.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_214630_668877_825CA9A7 
X-CRM114-Status: GOOD (  27.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, dl-linux-imx <linux-imx@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGVvbmFyZCwKCk9uIDExLzEvMTkgMTE6NDUgUE0sIExlb25hcmQgQ3Jlc3RleiB3cm90ZToK
PiBPbiAwMS4xMS4yMDE5IDA0OjA3LCBDaGFud29vIENob2kgd3JvdGU6Cj4+IEhpIExlb25hcmQs
Cj4+Cj4+IFdoeSBkbyB5b3UgYWRkIHRoZSBuZXcgcGF0Y2hlcyBvbiB2MTAgKHBhdGNoNi83Lzgp
Cj4+IGluIHRoaXMgc2VyaWVzPyBJZiB5b3UgdGhpbmsgdGhhdCBuZWVkIHRvIHVwZGF0ZQo+PiB0
aGUgcG1fcW9zIGNvcmUsIHlvdSBoYXZlIHRvIHNlbmQgdGhlIG5ldyBwYXRjaHNldAo+PiBvbiBz
ZXBhcmF0ZSBtYWlsIHRocmVhZC4gSXQgbWFrZSB0aGUgZGlmZmljdWx0Cj4+IHRvIG1lcmdlIHRo
ZSBQTV9Rb1Mgc3VwcG9ydCBvZiBkZXZmcmVxLgo+Pgo+PiBQbGVhc2Ugc3BsaXQgb3V0IHRoZSBw
YXRjaDYvNy84IGZyb20gdGhpcyBzZXJpZXMuCj4gCj4gVW5mb3J0dW5hdGVseSBERVZfUE1fUU9T
X01JTi9NQVhfRlJFUVVFTkNZIHdhcyByZW1vdmVkIHdoZW4gY3B1ZnJlcSAKPiBzd2l0Y2hlZCBh
d2F5Ogo+IAo+ICAgICAgaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTE5MzAy
MS8KPiAKPiBTdXBwb3J0IGZvciBmcmVxIGxpbWl0cyBpbiBQTSBRb1MgbmVlZHMgdG8gYmUgcmVz
dG9yZWQsIG90aGVyd2lzZSBQTSBRb1MgCj4gZm9yIGRldmZyZXEgZG9lc24ndCBldmVuIGNvbXBp
bGUuIEkgcG9zdGVkIHRoZSByZXN0b3JhdGlvbiBzZXBhcmF0ZWx5Ogo+IAo+ICAgICAgaHR0cHM6
Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTIxMjg4Ny8KPiAKPiBJIGd1ZXNzIHdlIGNh
biB3YWl0IGZvciBSYWZhZWwgdG8gcmV2aWV3IHRoYXQ/CgpJJ20gc29ycnkgZm9yIGxhdGUgcmVw
bHkuClRoYW5rcyBmb3IgdGhlIGV4cGxhbmF0aW9uLgoKPiAKPiBXZSBjb3VsZCBhbHNvIGNvbnNp
ZGVyIG90aGVyIGFsdGVybmF0aXZlcyBzdWNoIGFzIHVzaW5nICJyYXciIFBNIFFvUyAKPiBhZ2dy
ZWdhdGlvbiBpbnNpZGUgZGV2ZnJlcSBhbmQgYXNraW5nIGFsbCBjb25zdW1lcnMgdG8gY2FsbCAK
PiBkZXZmcmVxLXNwZWNpZmljIEFQSXMgZm9yIGZyZXF1ZW5jeSBjb25zdHJhaW50cz8KCkFjdHVh
bGx5LCBJIGRvbid0IHdhbnQgdG8gbWFrZSB0aGUgc2VwYXJhdGUgZGV2ZnJlcS1zcGVjaWZpYyBz
b21ldGhpbmcKZm9yIFBNIFFvUyBmZWF0dXJlLiBJZiBwb3NzaWJsZSwgSSB0aGluayB0aGF0IHdl
IG5lZWQgdG8gcmVkdWNlIHRoZSByZWR1bmRhbnQKb3IgZHVwbGljYXRlIGNvZGUgaW4gdGhlIGxp
bnV4IGtlcm5lbC4gRXZlbiBpZiBzcGVuZCB0aGUgbG9uZyB0aW1lCmZvciB1cGRhdGluZyBvciBm
aXhpbmcgdGhlIGlzc3VlIG9mIFBNIFFvUywgd2UgbmVlZCB0byBkbyB0aGVtLiBUaGFua3MuCgoK
PiAKPiBJbiB0aGUgbWVhbnRpbWUgSSBjYW4gcG9zdCB0aGUgZGV2ZnJlcSBjbGVhbnVwcyBpbiBz
ZXBhcmF0ZWx5LiB3b3VsZCAKPiB0aGF0IGhlbHA/CgpZZXMsIHlvdSBiZXR0ZXIgdG8gc2VuZCB0
aGUgZGV2ZnJlcSBjbGVhbnVwIHBhdGNoZXMgc2VwYXJhdGVseS4KCj4gCj4+IE9uIDE5LiAxMS4g
MS4g7Jik7KCEIDY6MzQsIExlb25hcmQgQ3Jlc3RleiB3cm90ZToKPj4+IFRoaXMgYWxsb3dzIGRl
dl9wbV9xb3MgdG8gZW1iZWQgZnJlcV9xb3Mgc3RydWN0cywgd2hpY2ggaXMgZG9uZSBpbiB0aGUK
Pj4+IG5leHQgcGF0Y2guIFNlcGFyYXRlIGNvbW1pdCB0byBtYWtlIGl0IGVhc2llciB0byByZXZp
ZXcuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTGVvbmFyZCBDcmVzdGV6IDxsZW9uYXJkLmNyZXN0
ZXpAbnhwLmNvbT4KPj4+IC0tLQo+Pj4gICBpbmNsdWRlL2xpbnV4L3BtX3Fvcy5oIHwgNzQgKysr
KysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+PiAgIDEgZmlsZSBjaGFu
Z2VkLCAzOCBpbnNlcnRpb25zKCspLCAzNiBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9saW51eC9wbV9xb3MuaCBiL2luY2x1ZGUvbGludXgvcG1fcW9zLmgKPj4+IGlu
ZGV4IGMzNWZmMjFlOGE0MC4uYThlMTQ4NmUzMjAwIDEwMDY0NAo+Pj4gLS0tIGEvaW5jbHVkZS9s
aW51eC9wbV9xb3MuaAo+Pj4gKysrIGIvaW5jbHVkZS9saW51eC9wbV9xb3MuaAo+Pj4gQEAgLTQ3
LDI1ICs0NywxMCBAQCBzdHJ1Y3QgcG1fcW9zX3JlcXVlc3Qgewo+Pj4gICBzdHJ1Y3QgcG1fcW9z
X2ZsYWdzX3JlcXVlc3Qgewo+Pj4gICAJc3RydWN0IGxpc3RfaGVhZCBub2RlOwo+Pj4gICAJczMy
IGZsYWdzOwkvKiBEbyBub3QgY2hhbmdlIHRvIDY0IGJpdCAqLwo+Pj4gICB9Owo+Pj4gICAKPj4+
IC1lbnVtIGRldl9wbV9xb3NfcmVxX3R5cGUgewo+Pj4gLQlERVZfUE1fUU9TX1JFU1VNRV9MQVRF
TkNZID0gMSwKPj4+IC0JREVWX1BNX1FPU19MQVRFTkNZX1RPTEVSQU5DRSwKPj4+IC0JREVWX1BN
X1FPU19GTEFHUywKPj4+IC19Owo+Pj4gLQo+Pj4gLXN0cnVjdCBkZXZfcG1fcW9zX3JlcXVlc3Qg
ewo+Pj4gLQllbnVtIGRldl9wbV9xb3NfcmVxX3R5cGUgdHlwZTsKPj4+IC0JdW5pb24gewo+Pj4g
LQkJc3RydWN0IHBsaXN0X25vZGUgcG5vZGU7Cj4+PiAtCQlzdHJ1Y3QgcG1fcW9zX2ZsYWdzX3Jl
cXVlc3QgZmxyOwo+Pj4gLQl9IGRhdGE7Cj4+PiAtCXN0cnVjdCBkZXZpY2UgKmRldjsKPj4+IC19
Owo+Pj4gLQo+Pj4gICBlbnVtIHBtX3Fvc190eXBlIHsKPj4+ICAgCVBNX1FPU19VTklUSUFMSVpF
RCwKPj4+ICAgCVBNX1FPU19NQVgsCQkvKiByZXR1cm4gdGhlIGxhcmdlc3QgdmFsdWUgKi8KPj4+
ICAgCVBNX1FPU19NSU4sCQkvKiByZXR1cm4gdGhlIHNtYWxsZXN0IHZhbHVlICovCj4+PiAgIAlQ
TV9RT1NfU1VNCQkvKiByZXR1cm4gdGhlIHN1bSAqLwo+Pj4gQEAgLTg4LDEwICs3Myw0OCBAQCBz
dHJ1Y3QgcG1fcW9zX2NvbnN0cmFpbnRzIHsKPj4+ICAgc3RydWN0IHBtX3Fvc19mbGFncyB7Cj4+
PiAgIAlzdHJ1Y3QgbGlzdF9oZWFkIGxpc3Q7Cj4+PiAgIAlzMzIgZWZmZWN0aXZlX2ZsYWdzOwkv
KiBEbyBub3QgY2hhbmdlIHRvIDY0IGJpdCAqLwo+Pj4gICB9Owo+Pj4gICAKPj4+ICsKPj4+ICsj
ZGVmaW5lIEZSRVFfUU9TX01JTl9ERUZBVUxUX1ZBTFVFCTAKPj4+ICsjZGVmaW5lIEZSRVFfUU9T
X01BWF9ERUZBVUxUX1ZBTFVFCSgtMSkKPj4+ICsKPj4+ICtlbnVtIGZyZXFfcW9zX3JlcV90eXBl
IHsKPj4+ICsJRlJFUV9RT1NfTUlOID0gMSwKPj4+ICsJRlJFUV9RT1NfTUFYLAo+Pj4gK307Cj4+
PiArCj4+PiArc3RydWN0IGZyZXFfY29uc3RyYWludHMgewo+Pj4gKwlzdHJ1Y3QgcG1fcW9zX2Nv
bnN0cmFpbnRzIG1pbl9mcmVxOwo+Pj4gKwlzdHJ1Y3QgYmxvY2tpbmdfbm90aWZpZXJfaGVhZCBt
aW5fZnJlcV9ub3RpZmllcnM7Cj4+PiArCXN0cnVjdCBwbV9xb3NfY29uc3RyYWludHMgbWF4X2Zy
ZXE7Cj4+PiArCXN0cnVjdCBibG9ja2luZ19ub3RpZmllcl9oZWFkIG1heF9mcmVxX25vdGlmaWVy
czsKPj4+ICt9Owo+Pj4gKwo+Pj4gK3N0cnVjdCBmcmVxX3Fvc19yZXF1ZXN0IHsKPj4+ICsJZW51
bSBmcmVxX3Fvc19yZXFfdHlwZSB0eXBlOwo+Pj4gKwlzdHJ1Y3QgcGxpc3Rfbm9kZSBwbm9kZTsK
Pj4+ICsJc3RydWN0IGZyZXFfY29uc3RyYWludHMgKnFvczsKPj4+ICt9Owo+Pj4gKwo+Pj4gKwo+
Pj4gK2VudW0gZGV2X3BtX3Fvc19yZXFfdHlwZSB7Cj4+PiArCURFVl9QTV9RT1NfUkVTVU1FX0xB
VEVOQ1kgPSAxLAo+Pj4gKwlERVZfUE1fUU9TX0xBVEVOQ1lfVE9MRVJBTkNFLAo+Pj4gKwlERVZf
UE1fUU9TX0ZMQUdTLAo+Pj4gK307Cj4+PiArCj4+PiArc3RydWN0IGRldl9wbV9xb3NfcmVxdWVz
dCB7Cj4+PiArCWVudW0gZGV2X3BtX3Fvc19yZXFfdHlwZSB0eXBlOwo+Pj4gKwl1bmlvbiB7Cj4+
PiArCQlzdHJ1Y3QgcGxpc3Rfbm9kZSBwbm9kZTsKPj4+ICsJCXN0cnVjdCBwbV9xb3NfZmxhZ3Nf
cmVxdWVzdCBmbHI7Cj4+PiArCX0gZGF0YTsKPj4+ICsJc3RydWN0IGRldmljZSAqZGV2Owo+Pj4g
K307Cj4+PiArCj4+PiAgIHN0cnVjdCBkZXZfcG1fcW9zIHsKPj4+ICAgCXN0cnVjdCBwbV9xb3Nf
Y29uc3RyYWludHMgcmVzdW1lX2xhdGVuY3k7Cj4+PiAgIAlzdHJ1Y3QgcG1fcW9zX2NvbnN0cmFp
bnRzIGxhdGVuY3lfdG9sZXJhbmNlOwo+Pj4gICAJc3RydWN0IHBtX3Fvc19mbGFncyBmbGFnczsK
Pj4+ICAgCXN0cnVjdCBkZXZfcG1fcW9zX3JlcXVlc3QgKnJlc3VtZV9sYXRlbmN5X3JlcTsKPj4+
IEBAIC0yNTMsMzEgKzI3NiwxMCBAQCBzdGF0aWMgaW5saW5lIHMzMiBkZXZfcG1fcW9zX3Jhd19y
ZXN1bWVfbGF0ZW5jeShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+PiAgIHsKPj4+ICAgCXJldHVybiBQ
TV9RT1NfUkVTVU1FX0xBVEVOQ1lfTk9fQ09OU1RSQUlOVDsKPj4+ICAgfQo+Pj4gICAjZW5kaWYK
Pj4+ICAgCj4+PiAtI2RlZmluZSBGUkVRX1FPU19NSU5fREVGQVVMVF9WQUxVRQkwCj4+PiAtI2Rl
ZmluZSBGUkVRX1FPU19NQVhfREVGQVVMVF9WQUxVRQkoLTEpCj4+PiAtCj4+PiAtZW51bSBmcmVx
X3Fvc19yZXFfdHlwZSB7Cj4+PiAtCUZSRVFfUU9TX01JTiA9IDEsCj4+PiAtCUZSRVFfUU9TX01B
WCwKPj4+IC19Owo+Pj4gLQo+Pj4gLXN0cnVjdCBmcmVxX2NvbnN0cmFpbnRzIHsKPj4+IC0Jc3Ry
dWN0IHBtX3Fvc19jb25zdHJhaW50cyBtaW5fZnJlcTsKPj4+IC0Jc3RydWN0IGJsb2NraW5nX25v
dGlmaWVyX2hlYWQgbWluX2ZyZXFfbm90aWZpZXJzOwo+Pj4gLQlzdHJ1Y3QgcG1fcW9zX2NvbnN0
cmFpbnRzIG1heF9mcmVxOwo+Pj4gLQlzdHJ1Y3QgYmxvY2tpbmdfbm90aWZpZXJfaGVhZCBtYXhf
ZnJlcV9ub3RpZmllcnM7Cj4+PiAtfTsKPj4+IC0KPj4+IC1zdHJ1Y3QgZnJlcV9xb3NfcmVxdWVz
dCB7Cj4+PiAtCWVudW0gZnJlcV9xb3NfcmVxX3R5cGUgdHlwZTsKPj4+IC0Jc3RydWN0IHBsaXN0
X25vZGUgcG5vZGU7Cj4+PiAtCXN0cnVjdCBmcmVxX2NvbnN0cmFpbnRzICpxb3M7Cj4+PiAtfTsK
Pj4+IC0KPj4+ICAgc3RhdGljIGlubGluZSBpbnQgZnJlcV9xb3NfcmVxdWVzdF9hY3RpdmUoc3Ry
dWN0IGZyZXFfcW9zX3JlcXVlc3QgKnJlcSkKPj4+ICAgewo+Pj4gICAJcmV0dXJuICFJU19FUlJf
T1JfTlVMTChyZXEtPnFvcyk7Cj4+PiAgIH0KPj4+ICAgCj4+Pgo+Pgo+Pgo+IAoKCi0tIApCZXN0
IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
