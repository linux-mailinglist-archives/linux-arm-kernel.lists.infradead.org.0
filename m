Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6C71C698C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 09:00:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=3jQcYUpCY0Fy+AwYiec88fGtNq8rv4EYBvGV/5XpAes=; b=kw3EEGRSOz9YWM
	awWklTEy2ho3A2ivyTePZLGdhWocSsp7+FfZYJ/FrfmvnUe/Vn+SVwajDbou2Lh7rCB612MoEcUln
	ZsXTS9glt7byatPWJasonk1+t5XO3zK7p9Is49RkkXnRgVgGyF9Ql3CzaQvz++EU/pkA5FEUSKfo2
	A+Jh+f0d8Yav4O+M+hDyvZNr7mBTOgbbdLmMRn2zBDjhfZNav8d24r5HHOwzRxUFG+zl0YZNmlak+
	5vyYqMMLHS0G+o9FUpZi35TQbw5zIobU64VKv0zjEhzqQUq5xdD3q5XbrSJnuwlrk5IlCP2bfyhu8
	gwDaQpbM7MWsEtEfxgMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWE21-0001Rq-NF; Wed, 06 May 2020 06:59:49 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWE1u-0001IS-M4
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 06:59:44 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200506065939epoutp02af3804c1c84e37c722f982143fa25071~MXjvcaEmN2136121361epoutp02o
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  6 May 2020 06:59:39 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200506065939epoutp02af3804c1c84e37c722f982143fa25071~MXjvcaEmN2136121361epoutp02o
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588748379;
 bh=lV2O+8iZ2/46R5+QG5laRwy2by68RqeSALI8AS4Fc/A=;
 h=From:To:Cc:Subject:Date:References:From;
 b=a6mx5bM24fDQD3a/VEqChD9sXCtscW9jdE2NEmhLoMG1/aMmberpPyw0v34tQNJTl
 iVne9tBs1U9cRF4DIWhCzIih/4ZiVIFOIp6pJ69bT0YtyioGsIQvZkYJjyFncM+5Lo
 ZiWQFtyS7v8nJXRrJi05fxNSFxKYcValPC5qO1Q4=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20200506065939epcas2p338187b35d7e399b1400de1b8d3fff8c9~MXju-kI3Q2161321613epcas2p3A;
 Wed,  6 May 2020 06:59:39 +0000 (GMT)
Received: from epsmges2p1.samsung.com (unknown [182.195.40.188]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 49H6sN68BxzMqYm1; Wed,  6 May
 2020 06:59:36 +0000 (GMT)
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 81.39.49908.85062BE5; Wed,  6 May 2020 15:59:36 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTPA id
 20200506065936epcas2p4dec87b4a038006c26d8c66c151694cdb~MXjsT5Ybh1915819158epcas2p4l;
 Wed,  6 May 2020 06:59:36 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200506065936epsmtrp17aae55cf1ad37c66d5e89f9f2cb72ab7~MXjsTEpZu2782027820epsmtrp1j;
 Wed,  6 May 2020 06:59:36 +0000 (GMT)
X-AuditID: b6c32a45-af9ff7000000c2f4-a7-5eb260581abe
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 CD.B8.18461.85062BE5; Wed,  6 May 2020 15:59:36 +0900 (KST)
Received: from ishtar.dsn.sec.samsung.com (unknown [12.36.155.159]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200506065936epsmtip14160593c2788d15c268561091017ee03~MXjsI8YjG2294722947epsmtip1m;
 Wed,  6 May 2020 06:59:36 +0000 (GMT)
From: Hyunki Koo <hyunki00.koo@samsung.com>
To: krzk@kernel.org, gregkh@linuxfoundation.org, jslaby@suse.com,
 robh+dt@kernel.org
Subject: [PATCH v9 0/3] 32-bit access for TX/RX hold registers for
 samsung_tty driver
Date: Wed,  6 May 2020 15:59:31 +0900
Message-Id: <20200506065931.16648-1-hyunki00.koo@samsung.com>
X-Mailer: git-send-email 2.15.0.rc1
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRjm29l2jtbiOK2+RHIcK8lSN2t2tBaBmoMkxKJCqnnSg0q7sbPZ
 hSDNmiapyYx0apo6wmGpc4pJGql0I3Vd1pUgzbSLhHaxGQltO4v897zP+z48z/t9L4YIG/nB
 WK5aT+vUlJLg+3O7B9dLIw9k2A6LzwxGkvVDIzyysKmNT1otLxGysn2GQ46OtqOk7f1zHvm0
 t5ZPVo32c8hHTaUoea5vCN3hL7dZz/Plt+taUXln82l5md0K5G12J1f+3bY6lZ+u3JZDU1m0
 TkSrMzVZuepsGbFrjyJBIY0VSyIlceQWQqSmVLSMSExJjdyZq3QnI0R5lNLgplIphiGit2/T
 aQx6WpSjYfQygtZmKbUSiTaKoVSMQZ0dlalRxUvE4hipezJDmdM/40S0rsDjw3PznHzQjJcA
 Pwzim2HFk7OgBPhjQrwHwL7xd1y2+AZg8dO3fLaYA/Btyx/uP4nT+B5hG30ALpyZ9UlcADZ/
 vgQ8U3x8A5z+VY14cBC+DxZYXvA8Qwg+AqCx4yrH0wjE98OOkkdezMXXwgnXL9SDBbgMVo40
 IKxdGHR8beaxfAB8UD3hjYHgobCwq8YbA+IFGLzWcIvHChLhmNEBWBwIP9+zoywOhp/KjT58
 GvYbK1BWfAHA+ZkPPvEmaJ4scosxt8N62NYb7YGeEEOvfb7LYPHgAsrSAlhsFLLCdfDG3EcO
 i0Ng64den5McVnzq8a4ixA/BadNP3kUQal60jXnRNub/vg0AsYIVtJZRZdNMjFay+FttwHuf
 EUk9oGokZQDgGCCWCsTJHYeFPCqPOaEaABBDiCDBUpebEmRRJ07SOo1CZ1DSzACQuh+7Agle
 nqlxX7tar5BIY2JjxXFSUhobQxIrBZ1LXh0U4tmUnj5K01pa90/HwfyC80F4SVKGo8wpqrPY
 ZnscRfEb/e7n1gtrTPawhsKmqbYE03Xb5cdv9v++c6orQDGeAYju+WrN5O7G4VNjS+SHTLKu
 lU5Z2qqbJmJ8a9BYeuuEA9xdM/dD/SCiHD0X0jKVZyf8BqMNX7TO2qBjpYay8OG9lcL8Z1ei
 LLfSXEcWHiYTXCaHkkQgOob6C8DSmWi1AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrBLMWRmVeSWpSXmKPExsWy7bCSnG5EwqY4g1lHhSzmHznHatG8eD2b
 xaqlN5gtpmz4wGRx/vwGdotNj6+xWlzeNYfNYsb5fUwWZxb3slu07j3C7sDlsWlVJ5vH/rlr
 2D02L6n36NuyitFj/ZarLB6fN8kFsEVx2aSk5mSWpRbp2yVwZez7cJW54IdwxdlvP5kaGJcI
 dDFyckgImEhcbXvM3MXIxSEksJtR4sCjS2wQCRmJCS+WMEPYwhL3W46wQhR9Y5R4u/QxK0iC
 TUBb4s33mUBFHBwiAlESez76g9QwC1xhlFj4fgsjSI2wQKjE6xtLWUBsFgFViSc/vrOD2LwC
 thJTzi2AWqAsceHdElaIuKDEyZlPWEBmMguoS6yfJwQSZhaQl2jeOpt5AiP/LCRVsxCqZiGp
 WsDIvIpRMrWgODc9t9iwwDAvtVyvODG3uDQvXS85P3cTIzjwtTR3MG5f9UHvECMTB+MhRgkO
 ZiURXp4fG+OEeFMSK6tSi/Lji0pzUosPMUpzsCiJ894oXBgnJJCeWJKanZpakFoEk2Xi4JRq
 YEpOvCLx5Gj7UrWIRXpWF1Z0O6x5azpl7tuS6ZEXCx6oB1qovlvqp1rg6yV5ccbW579PV6XM
 WO58i/PkvPTV4tNCjRb7+5xb7a5r9ajtekvZTkHu/u1TfRobkpviGZm2vCz2Us769uD7j6bj
 h30VYvMFbfqtEjUE1qQ4tHDPWeqh7dWZXapQ/Lhj06aTjK2TZ5x7O/HD98NRrnvv5zn/vl01
 Xbhm3ZNq8/y/js8mJOSHLRdLyJoefG3yVwUvb/WlDqxq2nGdSd+uKBW2VyrbZsy77Lp1Qejb
 x1oLH5frGi5JjtNUckkMN3+/Z+LaskjvT9/99N/FfHBwn8miN62lpFX1Q0pptNDrZ8/iN6bG
 KrEUZyQaajEXFScCAFOw1ojrAgAA
X-CMS-MailID: 20200506065936epcas2p4dec87b4a038006c26d8c66c151694cdb
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200506065936epcas2p4dec87b4a038006c26d8c66c151694cdb
References: <CGME20200506065936epcas2p4dec87b4a038006c26d8c66c151694cdb@epcas2p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_235942_969641_0F21AE97 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, Hyunki Koo <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2hhbmdlIGluIHY5OgotIG1vdmUgd3JfcmVnX2JhcnJpZXIgaW50byBpZmRlZiBvZiBDT05GSUdf
U0VSSUFMX1NBTVNVTkdfQ09OU09MRQogIHRvIGZpeCBmb2xsb3dpbmcgYnVpbGQgZXJyb3IgZm9y
IHg4NiBidWlsZAogIENDIFtNXSAgZHJpdmVycy90dHkvc2VyaWFsL3NhbXN1bmdfdHR5Lm8KICBk
cml2ZXJzL3R0eS9zZXJpYWwvc2Ftc3VuZ190dHkuYzoxODY6MTM6IHdhcm5pbmc6IOKAmHdyX3Jl
Z19iYXJyaWVy4oCZCiAgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWZ1bmN0aW9uXQoK
Q2hhbmdlIGluIHY4OgotIHNwaXQgaW50byAzIHBhdGNoCiAgWzEvM10gY3JlYXRlIHRoZSBuZXcg
ZnVuY3Rpb25zIHdpdGggbm8gZnVuY3Rpb25hbCBjaGFuZ2UgdG8gdGhlIGNvZGUgYXMtaXMuCiAg
UmVwbGFjZSByZF9yZWdiL3dyX3JlZ2Igd2l0aCByZF9yZWcvd3JfcmVnIGZvciBnZW5lcmFsIHVz
YWdlLgogIFsyLzNdIGFkZCB0aGUgbmV3IGJpbmRpbmcgcmVnLWlvLXdpZHRoIGluIGRldmljZSB0
cmVlCiAgWzMvM10gYWRkIHRoZSBuZXcgZnVudGluYWxpdHkgb2YgcmRfcmVnIC8gd3JfcmVnIGFu
ZCB3cl9yZWdfYmFycmllciAKICAgICAgICB0byBzdXBwb3J0IDMyLWJpdCBhY2Nlc3MgZm9yIHRo
ZSBUWC9SWCBob2xkIHJlZ2lzdGVycyBVVFhIIGFuZCBVUlhILgoKQ2hhbmdlIGluIHY3OgotIFsx
LzJdIGNvcnJlY3QgYnVpbGQgZXJyb3Igb24gcnVubmluZyAnbWFrZSBkdF9iaW5kaW5nX2NoZWNr
JyAKRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NlcmlhbC9zYW1zdW5nX3VhcnQu
eWFtbDogIG1hcHBpbmcgdmFsdWVzIGFyZSBub3QgYWxsb3dlZCBpbiB0aGlzIGNvbnRleHQKICBp
biAiPHVuaWNvZGUgc3RyaW5nPiIsIGxpbmUgMzYsIGNvbHVtbiAxMwogIERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9NYWtlZmlsZToxMjogcmVjaXBlIGZvciB0YXJnZXQgJ0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zZXJpYWwvc2Ftc3VuZ191YXJ0LmV4YW1wbGUu
ZHRzJyBmYWlsZWQKICBtYWtlWzFdOiAqKiogW0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9zZXJpYWwvc2Ftc3VuZ191YXJ0LmV4YW1wbGUuZHRzXSBFcnJvciAxCiAgbWFrZVsxXTog
KioqIFdhaXRpbmcgZm9yIHVuZmluaXNoZWQgam9icy4uLi4KICBNYWtlZmlsZToxMjYyOiByZWNp
cGUgZm9yIHRhcmdldCAnZHRfYmluZGluZ19jaGVjaycgZmFpbGVkCiAgbWFrZTogKioqIFtkdF9i
aW5kaW5nX2NoZWNrXSBFcnJvciAyCi0gWzIvMl0gYWRkIGNvbW1pdCBtZXNzYWdlIG9mIHJldmll
d2VkIGJ5IGFuZCB0ZXN0ZWQgYnkgaW4gY29tbWl0IG1lc3NhZ2UKICBSZXZpZXdlZC1ieTogS3J6
eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgogIFRlc3RlZCBvbiBPZHJvaWQgSEMx
IChFeHlub3M1NDIyKToKICBUZXN0ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2Vy
bmVsLm9yZz4KCkNoYW5nZSBpbiB2NjoKLSBbMi8yXSBjbGVhbiBkZXNjcmlwdGlvbiBvZiByZWct
aW8td2lkdGgKICBhbGxPZiBpcyBub3QgbmVlZGVkLiBKdXN0IGVudW0gWzEsIDJdIGlzIGVub3Vn
aC4KCkNoYW5nZXMgaW4gdjU6Ci0gc3BpdCBpbnRvIDIgcGF0Y2gsIG5ld2x5IGFkZGVkIHBhdGNo
IGZvciBkdC1iaW5kaW5nCiAgWzEvMl0gbmV3bHkgYWRkZWQgZHQtYmluZGluZyBhbmQgZ28gYXMg
Zmlyc3QgcGF0Y2ggaW4gdGhpcyBzZXJpZXMuCiAgWzIvMl0gZ28gYXMgc2Vjb25kIHBhdGNoIGlu
IHRoaXMgc2VyaWVzLgoKQ2hhbmdlcyBpbiB2NDoKLSBjb3JyZWN0IHZhcmlhYmxlIHR5cGVzIGFu
ZCBjaGFuZ2UgbWlzbGVhZGluZyBmdW5jdGlvbiBuYW1lCgpDaGFuZ2VzIGluIHYzOgotIGxpbmUg
MjAzMTogcmVtb3ZlIHJlZHVuZGFudCBpbml0IHZhbHVlICBmb3Igb3VycG9ydC0+cG9ydC5pb3R5
cGUKCkNoYW5nZXMgaW4gdjI6Ci0gbGluZSA5NTQgOiBjaGFuZ2UgcmRfcmVnbCB0byByZF9yZWcg
aW4gZm9yIGJhY2t3YXJkIGNvbXBhdGliaWxpdHkuCi0gbGluZSAyMDMxOiBBZGQgaW5pdCB2YWx1
ZSBmb3Igb3VycG9ydC0+cG9ydC5pb3R5cGUgIHRvIFVQSU9fTUVNCgpIeXVua2kgS29vICgzKToK
ICBzZXJpYWw6IHNhbXN1bmc6IFJlcGxhY2UgcmRfcmVnYi93cl9yZWdiIHdpdGggcmRfcmVnL3dy
X3JlZwogIGR0LWJpbmRpbmdzOiBzZXJpYWw6IEFkZCByZWctaW8td2lkdGggY29tcGF0aWJsZQog
IHR0eTogc2Ftc3VuZ190dHk6IDMyLWJpdCBhY2Nlc3MgZm9yIFRYL1JYIGhvbGQgcmVnaXN0ZXJz
CgogLi4uL2RldmljZXRyZWUvYmluZGluZ3Mvc2VyaWFsL3NhbXN1bmdfdWFydC55YW1sICAgfCAg
OCArKysKIGRyaXZlcnMvdHR5L3NlcmlhbC9zYW1zdW5nX3R0eS5jICAgICAgICAgICAgICAgICAg
IHwgNzYgKysrKysrKysrKysrKysrKysrLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA3MiBpbnNlcnRp
b25zKCspLCAxMiBkZWxldGlvbnMoLSkKCi0tIAoyLjE1LjAucmMxCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
