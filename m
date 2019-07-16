Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5332A6A5C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 11:47:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjxyuNgi0gwVzbxffwKRrQGkziQbILAhNwUsEC+l1Dg=; b=fQJjUudx4n6P+1
	DRDPV1tRujvP6oh8I8lf85uKjV4evZx51Bnazeymw7fF0s2U/XthkYuEK7AqANDMUqFjVJ8D3VNf5
	ArCEHTLWQ4GoIeTKxGrSPK4WwTEtS9USuaPcJgRmX4jjLXdvMSBTyS3/TZZGCO9ZKTBT8EO4OZbHS
	li2r6rJWQvsmHVvIg3aLn8Ve8r9uzCmhPjf+xoT7mZr85FPHCt0VcQrzRjfTxYBR8sCDVAsVBO8HD
	ktwJ2CWodYHCJo1uvDcJIygYp9idpX46P11RLeG+JzevJhUVToG4GEY+1DaKVQIwtLayyMDkBNLDJ
	zVC41EaIR2sVtik1bgBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnK36-0007vn-V2; Tue, 16 Jul 2019 09:47:04 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnK2t-0007vD-OV
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 09:46:53 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190716094648epoutp04e83814c7c1344e2a97a1cbaf3bdd5b91~x2idscvcK2707927079epoutp04j
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 09:46:48 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190716094648epoutp04e83814c7c1344e2a97a1cbaf3bdd5b91~x2idscvcK2707927079epoutp04j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563270408;
 bh=4bfSgfYoCpxhiF8FXK5rSogZNO+K2iF9TeI2hAAgd80=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=sln+luGgK+4yeGiHOrvaFfkvarEH2NYw8PG8OMNe1LtimLobdePJQ9wMdngD0vLta
 uDk0Puvg0Xq0aODqdvmLvN7jZuZ5i1Ay9aVfIluAnkQ4BpOLma/6uGZFW+s9iMQTJc
 Byl0+leQ1Qi9iXq4CBWqMQvLVWSFatLqd2yX7Ux8=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20190716094647epcas1p386efce8c9b0b24d25009925624c13438~x2idC4con0776707767epcas1p3T;
 Tue, 16 Jul 2019 09:46:47 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.157]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 45nwXP3PtTzMqYln; Tue, 16 Jul
 2019 09:46:45 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 A7.FA.04088.50D9D2D5; Tue, 16 Jul 2019 18:46:45 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190716094644epcas1p2905f90d0067a302244b4cac39ca17cad~x2iaPB5AJ2000420004epcas1p27;
 Tue, 16 Jul 2019 09:46:44 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190716094644epsmtrp23e07c5c0a50a4932ff52915493bd109d~x2iaOEvCc0052500525epsmtrp2T;
 Tue, 16 Jul 2019 09:46:44 +0000 (GMT)
X-AuditID: b6c32a35-85dff70000000ff8-10-5d2d9d051238
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 54.96.03706.40D9D2D5; Tue, 16 Jul 2019 18:46:44 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190716094644epsmtip2758a371fe6a83b23d1b4692c4a1031ee~x2iZynVEa1526415264epsmtip2K;
 Tue, 16 Jul 2019 09:46:44 +0000 (GMT)
Subject: Re: [PATCH v1 01/50] clk: samsung: add new IDs for Exynos5420 clocks
To: Lukasz Luba <l.luba@partner.samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <f8ff72f9-4a55-40c6-fdb9-bb4cddd00cf9@samsung.com>
Date: Tue, 16 Jul 2019 18:49:50 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715124417.4787-2-l.luba@partner.samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrEJsWRmVeSWpSXmKPExsWy7bCmni7rXN1Yg+krBC1urTvHarFxxnpW
 i/lHgKz+x6+ZLc6f38BucbbpDbvFrQYZi02Pr7FafOy5x2pxedccNosZ5/cxWaw9cpfdYun1
 i0wWF0+5WtxuXMFm0br3CLvF4TftrBb/rm1kcRDyWDNvDaPH+xut7B6bVnWyeWxeUu9x8N0e
 Jo++LasYPT5vkgtgj8q2yUhNTEktUkjNS85PycxLt1XyDo53jjc1MzDUNbS0MFdSyEvMTbVV
 cvEJ0HXLzAF6QkmhLDGnFCgUkFhcrKRvZ1OUX1qSqpCRX1xiq5RakJJTYFmgV5yYW1yal66X
 nJ9rZWhgYGQKVJiQndG4tZe94Ltyxe8evQbGjeJdjJwcEgImEi0Lm9i7GLk4hAR2MEpcXv2X
 CSQhJPCJUaJzkRxE4hujRMuER8wwHWdvPGKCSOxllDh7bD+U8x6ofcp3sCphAX+Jx6v/soHY
 IgLnGCU6nkqD2MwC05gkZs0TBbHZBLQk9r+4AVbDL6AocfXHY0YQm1fATuLYkrWsIDaLgKrE
 r3kv2UFsUYEIiVNH5rFA1AhKnJz5BMzmFLCXuNV9nw1ivrjErSfzmSBseYnmrbOZQY6TEDjF
 LnFkxy0miBdcJL7NesMKYQtLvDq+hR3ClpL4/G4vG4RdLbHy5BE2iOYORokt+y9ANRhL7F86
 GWgQB9AGTYn1u/QhwooSO3/PZYRYzCfx7msPK0iJhACvREebEESJssTlB3ehTpCUWNzeyTaB
 UWkWkndmIXlhFpIXZiEsW8DIsopRLLWgODc9tdiwwBA5sjcxgtO3lukOxinnfA4xCnAwKvHw
 KuzXiRViTSwrrsw9xCjBwawkwmv7VTtWiDclsbIqtSg/vqg0J7X4EKMpMLQnMkuJJucDc0te
 SbyhqZGxsbGFiaGZqaGhkjjvvD+asUIC6YklqdmpqQWpRTB9TBycUg2Mght88wqynh3fmb5Y
 +ufWLYn8L0pOzapRYfn/9ryr7aHvkkKL33HI/RAWMrlyTcSj0/85q/A5LrOtszbpRL/dW6e7
 wG6FziwXNyXLSLYWx9SbLFGS4fmiv7SLmJz0Ju789XeVWe6i5/+Nnk45HGyw89F3PxX2imhZ
 hb8OzWI5NtsEzJ5p661VYinOSDTUYi4qTgQAzu9yMvUDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLIsWRmVeSWpSXmKPExsWy7bCSvC7LXN1Yg4d7NS1urTvHarFxxnpW
 i/lHgKz+x6+ZLc6f38BucbbpDbvFrQYZi02Pr7FafOy5x2pxedccNosZ5/cxWaw9cpfdYun1
 i0wWF0+5WtxuXMFm0br3CLvF4TftrBb/rm1kcRDyWDNvDaPH+xut7B6bVnWyeWxeUu9x8N0e
 Jo++LasYPT5vkgtgj+KySUnNySxLLdK3S+DKaNzay17wXbnid49eA+NG8S5GTg4JAROJszce
 MXUxcnEICexmlJh1bAojREJSYtrFo8xdjBxAtrDE4cPFEDVvGSU+bX3CAhIXFvCVeHXRHCQu
 InCOUaLv71l2kF5mgWlMEifWM0M0HGeU+Lr1AthQNgEtif0vbrCB2PwCihJXfzwGi/MK2Ekc
 W7KWFcRmEVCV+DXvJdggUYEIiUnXdrJA1AhKnJz5BMzmFLCXuNV9nw1imbrEn3mXmCFscYlb
 T+YzQdjyEs1bZzNPYBSehaR9FpKWWUhaZiFpWcDIsopRMrWgODc9t9iwwDAvtVyvODG3uDQv
 XS85P3cTIziStTR3MF5eEn+IUYCDUYmH98QenVgh1sSy4srcQ4wSHMxKIry2X7VjhXhTEiur
 Uovy44tKc1KLDzFKc7AoifM+zTsWKSSQnliSmp2aWpBaBJNl4uCUamAs3q0u9vXuht87Z8e7
 Bbj+n1Qg80jKQ1iYdfKZjf0tNWuOFtj+ZhJYNnO25+a1rzabZN85bRbV9/Dqn616Riv1wh3q
 M8Iqwxxv/qjcpGYx7buXRcepbzfmPilPv9117QBz7mr9jEiDw49WHJPzVgj4pfHbcNrBjyJd
 prHz1siGyIim52vudHqsxFKckWioxVxUnAgAwMSwueACAAA=
X-CMS-MailID: 20190716094644epcas1p2905f90d0067a302244b4cac39ca17cad
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190715124434eucas1p273e2efaad8bc3904c6f76cc1671aeb6c
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124434eucas1p273e2efaad8bc3904c6f76cc1671aeb6c@eucas1p2.samsung.com>
 <20190715124417.4787-2-l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_024652_206345_3542D345 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
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

SGksCgpVc3VhbGx5LCB3aGVuIGRldmVsb3BpbmcgdGhlIGNsb2NrIGNvbnRyb2xsZXIgZHJpdmVy
LApkZWZpbmUgdGhlIHNhbWUgc2VxdWVuY2UgYmV0d2VlbiB0aGUgZGVmaW5pdGlvbiBzZXF1ZW5j
ZSBpbiBkdC1iaWJpbmcKYW5kIGNsb2NrIGRyaXZlci4gQXMgSSByZXBsaWVkLCBpZiB5b3Ugc3F1
YXNoIHBhdGNoZXMsIGl0IGlzIGVhc3kuCgpGb3IgZXhhbXBsZSwKVGhpcyBzZXJpZXMgYWRkIGNs
b2NrIGlkIGFzIGZvbGxvd2luZy4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKIDU2OSAgICAgICAgIE1V
WChDTEtfTU9VVF9BQ0xLNDAwX0lTUCwgIm1vdXRfYWNsazQwMF9pc3AiLCBtb3V0X2dyb3VwMV9w
LCAgICAgICAgICAgIAogNTcwICAgICAgICAgICAgICAgICAgICAgICAgIFNSQ19UT1AwLCAwLCAy
KSwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiA1NzEgICAgICAgICBN
VVgoQ0xLX01PVVRfQUNMSzQwMF9NU0NMLCAibW91dF9hY2xrNDAwX21zY2wiLCBtb3V0X2dyb3Vw
MV9wLCAgICAgICAgICAKIDU3MiAgICAgICAgICAgICAgICAgICAgICAgICBTUkNfVE9QMCwgNCwg
MiksICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogNTczICAgICAgICAg
TVVYKENMS19NT1VUX0FDTEs0MDBfV0NPUkUsICJtb3V0X2FjbGs0MDBfd2NvcmUiLCBtb3V0X2dy
b3VwMV9wLCAgICAgICAgCiA1NzQgICAgICAgICAgICAgICAgICAgICAgICAgU1JDX1RPUDAsIDE2
LCAyKSwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKIDU3NSAgICAgICAg
IE1VWChDTEtfTU9VVF9BQ0xLMTAwX05PQywgIm1vdXRfYWNsazEwMF9ub2MiLCBtb3V0X2dyb3Vw
MV9wLCAgICAgICAgICAgIAogNTc2ICAgICAgICAgICAgICAgICAgICAgICAgIFNSQ19UT1AwLCAy
MCwgMiksICAgICAgICAgIAoKSW4gY2FzZSBvZiB0aGlzIGNvZGUsIHlvdSBjYW4gZGVmaW5lIHRo
ZSBJRHMgYXMgZm9sbG93aW5nIHNlcXVlbnRpYWxseToKCiNkZWZpbmUgQ0xLX01PVVRfQUNMSzQw
MF9JU1AgLi4uCiNkZWZpbmUgQ0xLX01PVVRfQUNMSzQwMF9NU0NMIC4uLiAKI2RlZmluZSBDTEtf
TU9VVF9BQ0xLNDAwX1dDT1JFIC4uLgojZGVmaW5lIENMS19NT1VUX0FDTEsxMDBfTk9DIC4uLgoK
CkJ1dCwgdGhpcyBzZXJpZXMgZGVmaW5lIHRoZSBJRCBhcyBmb2xsb3dpbmc6CgkjZGVmaW5lIENM
S19NT1VUX0FDTEs0MDBfV0NPUkUgICAgICAgICAgNjYyICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIAojZGVmaW5lIENMS19NT1VUX1NDTEtfRFBMTCAgICAgIDY2MyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAoJI2RlZmluZSBDTEtfTU9VVF9B
Q0xLMTAwX05PQyAgICA2NjQgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAKI2RlZmluZSBDTEtfTU9VVF9BQ0xLMjAwX0ZTWVMyICA2NjUgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKI2RlZmluZSBDTEtfTU9VVF9QQ0xLMjAwX0ZT
WVMgICA2NjYgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKI2Rl
ZmluZSBDTEtfTU9VVF9BQ0xLMjAwX0ZTWVMgICA2NjcgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAKCSNkZWZpbmUgQ0xLX01PVVRfQUNMSzQwMF9JU1AgICAgNjY4
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCgkjZGVmaW5lIENM
S19NT1VUX0FDTEs0MDBfTVNDTCAgIDY2OSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIAojZGVmaW5lIENMS19NT1VUX1NDTEtfTVBMTCAgICAgIDcwMCAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAojZGVmaW5lIENMS19NT1VUX0FD
TEsyNjYgICAgICAgIDcwMSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIAojZGVmaW5lIENMS19NT1VUX1VBUlQwICAgICAgICAgIDcwMiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIAojZGVmaW5lIENMS19NT1VUX1VBUlQxICAgICAg
ICAgIDcwMyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAojZGVm
aW5lIENMS19NT1VUX1VBUlQyICAgICAgICAgIDcwNCAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIAojZGVmaW5lIENMS19NT1VUX1VBUlQzICAgICAgICAgIDcKCk9u
IDE5LiA3LiAxNS4g7Jik7ZuEIDk6NDMsIEx1a2FzeiBMdWJhIHdyb3RlOgo+IFRoZXJlIGlzIGEg
bmVlZCBvZiBuZXcgSURzIHdoaWNoIHdpbGwgYmUgdXNlZCBmb3IgbW9kZWxpbmcgcHJvcGVyIGhp
ZXJhcmNoeQo+IGluIHRoZSBFeHlub3M1NHh4IFNvQ3MuIFByZXZpb3VzIGltcGxlbWVudGF0aW9u
IHJlbHkgb24gYm9vdGxvYWRlcgo+IHNldHRpbmdzLCB3aGljaCBhcmUgbm90IGNvbmZpZ3VyaW5n
IHByb3Blcmx5IHNvbWUgY2xvY2tzLgo+IFRoZXNlIElEcyBwcm92aWRlIGludGVyZmFjZSB0byBz
ZXQgcHJvcGVyIHBhcmVudHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTHVrYXN6IEx1YmEgPGwubHVi
YUBwYXJ0bmVyLnNhbXN1bmcuY29tPgo+IC0tLQo+ICBpbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2Nr
L2V4eW5vczU0MjAuaCB8IDI3ICsrKysrKysrKysrKysrKysrKysrKysrKystCj4gIDEgZmlsZSBj
aGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svZXh5bm9zNTQyMC5oIGIvaW5jbHVkZS9kdC1iaW5k
aW5ncy9jbG9jay9leHlub3M1NDIwLmgKPiBpbmRleCAwMmQ1YWM0NjlhM2QuLmMzN2EyOGVlYWY3
ZSAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2V4eW5vczU0MjAuaAo+
ICsrKyBiL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svZXh5bm9zNTQyMC5oCj4gQEAgLTIzMCw2
ICsyMzAsMzAgQEAKPiAgI2RlZmluZSBDTEtfTU9VVF9VU0VSX01BVV9FUExMCTY1OQo+ICAjZGVm
aW5lIENMS19NT1VUX1NDTEtfU1BMTAk2NjAKPiAgI2RlZmluZSBDTEtfTU9VVF9NWF9NU1BMTF9D
Q09SRV9QSFkJNjYxCj4gKyNkZWZpbmUgQ0xLX01PVVRfQUNMSzQwMF9XQ09SRQkJNjYyCj4gKyNk
ZWZpbmUgQ0xLX01PVVRfU0NMS19EUExMCTY2Mwo+ICsjZGVmaW5lIENMS19NT1VUX0FDTEsxMDBf
Tk9DCTY2NAo+ICsjZGVmaW5lIENMS19NT1VUX0FDTEsyMDBfRlNZUzIJNjY1Cj4gKyNkZWZpbmUg
Q0xLX01PVVRfUENMSzIwMF9GU1lTCTY2Ngo+ICsjZGVmaW5lIENMS19NT1VUX0FDTEsyMDBfRlNZ
Uwk2NjcKPiArI2RlZmluZSBDTEtfTU9VVF9BQ0xLNDAwX0lTUAk2NjgKPiArI2RlZmluZSBDTEtf
TU9VVF9BQ0xLNDAwX01TQ0wJNjY5Cj4gKyNkZWZpbmUgQ0xLX01PVVRfU0NMS19NUExMCTcwMAo+
ICsjZGVmaW5lIENMS19NT1VUX0FDTEsyNjYJNzAxCj4gKyNkZWZpbmUgQ0xLX01PVVRfVUFSVDAJ
CTcwMgo+ICsjZGVmaW5lIENMS19NT1VUX1VBUlQxCQk3MDMKPiArI2RlZmluZSBDTEtfTU9VVF9V
QVJUMgkJNzA0Cj4gKyNkZWZpbmUgQ0xLX01PVVRfVUFSVDMJCTcwNQo+ICsjZGVmaW5lIENMS19N
T1VUX1NDTEtfQ1BMTAk3MDYKPiArI2RlZmluZSBDTEtfTU9VVF9QV00JCTcwNwo+ICsjZGVmaW5l
IENMS19NT1VUX0FDTEsyNjZfRzJECQk3MDgKPiArI2RlZmluZSBDTEtfTU9VVF9TV19BQ0xLNDAw
X1dDT1JFCTcwOQo+ICsjZGVmaW5lIENMS19NT1VUX1NXX0FDTEs0MDBfTVNDTAk3MTAKPiArI2Rl
ZmluZSBDTEtfTU9VVF9TV19BQ0xLNDAwX0lTUAkJNzExCj4gKyNkZWZpbmUgQ0xLX01PVVRfU1df
QUNMSzI2Nl9JU1AJCTcxMgo+ICsjZGVmaW5lIENMS19NT1VUX1VTRVJfQUNMSzI2Nl9JU1AJNzEz
Cj4gKyNkZWZpbmUgQ0xLX01PVVRfQUNMSzI2Nl9JU1AJNzE0Cj4gKyNkZWZpbmUgQ0xLX01PVVRf
TU1DMAkJNzE1Cj4gIAo+ICAvKiBkaXZpZGVyIGNsb2NrcyAqLwo+ICAjZGVmaW5lIENMS19ET1VU
X1BJWEVMCQk3NjgKPiBAQCAtMjY0LDggKzI4OCw5IEBACj4gICNkZWZpbmUgQ0xLX0ZGX0RPVVRf
U1BMTDIJNzk3Cj4gICNkZWZpbmUgQ0xLX0RPVVRfUENMS19EUkVYMAk3OTgKPiAgI2RlZmluZSBD
TEtfRE9VVF9QQ0xLX0RSRVgxCTc5OQo+ICsjZGVmaW5lIENMS19ET1VUX0FDTEsyNjZfSVNQCTgw
MAo+ICAKPiAgLyogbXVzdCBiZSBncmVhdGVyIHRoYW4gbWF4aW1hbCBjbG9jayBpZCAqLwo+IC0j
ZGVmaW5lIENMS19OUl9DTEtTCQk4MDAKPiArI2RlZmluZSBDTEtfTlJfQ0xLUwkJODAxCj4gIAo+
ICAjZW5kaWYgLyogX0RUX0JJTkRJTkdTX0NMT0NLX0VYWU5PU181NDIwX0ggKi8KPiAKCgotLSAK
QmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
