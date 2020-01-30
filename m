Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EB214DACC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 13:40:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=CJtd3nZ7os2yD6NpJJKRT+grTfbOAWqu/TqmcqPIZBU=; b=Ax3BvsNekpxsq1
	Yfs4jFrC3NGJ9WZsGCxa5+uGQukIFMbo2ELOJXsSUeItOk9yVVZJUVVDkNfZ/bvgU7VfgmCHft2DQ
	ObCUFDBosJAU46d8goKdpEjpijG8PhjYOER2CoG5uIFwMBm5bZICHBrv5a2Xdf2E3uH8RuFZPgB9S
	TRzIL5ZoM7cKT7t0wEpGzFdrMTCsFhxILh9Q7ccBAkge8h4g2V6sEBA0SYx2hADvqbkEy3prtHEdp
	uEbLj4K9mgTW5+j8az6UdQtsEGWRn+B5OegLlGk9wHf8zIDbjxEpSe1OTODY0aVzIBc0DBvqjRjXP
	eCGHtQHUwLbv3uoLGb+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix97I-0002YI-5s; Thu, 30 Jan 2020 12:40:16 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix976-0001Qo-7u
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 12:40:07 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200130124001euoutp02b5aca4a6e6dbc6848c89f4fb6361b12e~uqoOJ5sfI0501905019euoutp02e
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Jan 2020 12:40:01 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200130124001euoutp02b5aca4a6e6dbc6848c89f4fb6361b12e~uqoOJ5sfI0501905019euoutp02e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1580388001;
 bh=Jzdor6fDyEnMsChZ027tOaitTynBCI6a43ngD1bmh0o=;
 h=From:To:Cc:Subject:Date:References:From;
 b=G4V8TrrYGDftuvmy7lSwk8OS7dmash8BRuSalwNmgm19XznE5UE9oI7Jn1sQJNrR+
 TVrObNHktdSt6W8o0m8/lH3spkpk9ln1KCyZ3qh5mBJQnvhucyej9gtTPSNmgQ3R4F
 W9eLq52Pf9z6dXeZZwsdMTMq705orMwTmr2luD80=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200130124000eucas1p1aa08fe80f3610b04dfecf70f6c348433~uqoN96rob1361413614eucas1p1-;
 Thu, 30 Jan 2020 12:40:00 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id C6.69.61286.0AEC23E5; Thu, 30
 Jan 2020 12:40:00 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200130124000eucas1p137943be0fe3e5e1eb45e705dc5c46431~uqoNuQkB42838028380eucas1p1g;
 Thu, 30 Jan 2020 12:40:00 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200130124000eusmtrp29bd8676f25fb6eb1b0a30fbf98336b88~uqoNtltLd2643726437eusmtrp2W;
 Thu, 30 Jan 2020 12:40:00 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-63-5e32cea011e6
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 8B.EC.07950.0AEC23E5; Thu, 30
 Jan 2020 12:40:00 +0000 (GMT)
Received: from localhost (unknown [106.120.51.46]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200130124000eusmtip11b04f02223def1624a661e1cc2f980a8~uqoNjVG7W1920319203eusmtip1c;
 Thu, 30 Jan 2020 12:40:00 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Subject: [RFC PATCH 0/4] boot/loader: Load kernel directly from firmware
Date: Thu, 30 Jan 2020 13:39:34 +0100
Message-Id: <20200130123934.3900-1-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpileLIzCtJLcpLzFFi42LZduznOd0F54ziDPY8sbS4eWgFo8Wmx9dY
 LS7vmsNmMeP8PiYHFo/NS+o9+rasYvT4vEkugDmKyyYlNSezLLVI3y6BK2N1y3nGgnn6FVs+
 nGVvYJyp2sXIySEhYCLx9PYN1i5GLg4hgRWMEj/XTWCCcL4wSjTf+84I4XxmlLj8fwY7TMvs
 u4ehEssZJS68PsQO4TxnlDi6ZzYLSBWbgKNE/9ITrCC2iEC2xOSPX5hAbGYBe4mJs/6zgdjC
 Ah4S608/ArNZBFQldq/ax9zFyMHBK2Al8f5wMsQyeYnzvevAFvMKCEqcnPkEbDy/gJbEmqbr
 LBAj5SWat85mBrlBQuAzm8S8/+dYIZpdJFZua2CEsIUlXh3fAvWBjMT/nfOZQHZJCNRLTJ5k
 BtHbwyixbc4PFogaa4k7536xgdQwC2hKrN+lD1HuKNG2xAHC5JO48VYQ4gI+iUnbpjNDhHkl
 OtqEIGaoSKzr3wM1T0qi99UKqFs8JP4tes84gVFxFpK/ZiH5ZRbC2gWMzKsYxVNLi3PTU4sN
 81LL9YoTc4tL89L1kvNzNzECU8bpf8c/7WD8einpEKMAB6MSD6/HGaM4IdbEsuLK3EOMEhzM
 SiK8oq6GcUK8KYmVValF+fFFpTmpxYcYpTlYlMR5jRe9jBUSSE8sSc1OTS1ILYLJMnFwSjUw
 Cm//8f7NX49fByr5hV2//Nty2GjZ1Zzrdbbu32Nt38/QuS30cAvbWreqX8Z7Lmibzoo8XNv+
 f1lPv96/r7cirhqceD4l8wXPUfslR433e2bPdT/THChX8S/6umHfHcuqFoN1kTzO6yoESoMN
 LbhFj5xKeWv3Z6PfXIlD8va71xx+m/k427nphRJLcUaioRZzUXEiALtU5BsVAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrNLMWRmVeSWpSXmKPExsVy+t/xu7oLzhnFGdz9rW5x89AKRotNj6+x
 WlzeNYfNYsb5fUwOLB6bl9R79G1ZxejxeZNcAHOUnk1RfmlJqkJGfnGJrVK0oYWRnqGlhZ6R
 iaWeobF5rJWRqZK+nU1Kak5mWWqRvl2CXsbqlvOMBfP0K7Z8OMvewDhTtYuRk0NCwERi9t3D
 jF2MXBxCAksZJTac+craxcgBlJCSWDk3HaJGWOLPtS42iJqnjBIX/x9gA0mwCThK9C89wQpi
 iwjkSlw7dJQdxGYWsJeYOOs/WI2wgIfE+tOPwGwWAVWJ3av2MYPM5xWwknh/OBlivrzE+d51
 YK28AoISJ2c+YQEpYRZQl1g/TwgkzC+gJbGm6ToLxHR5ieats5knMArMQtIxC6FjFpKqBYzM
 qxhFUkuLc9Nzi430ihNzi0vz0vWS83M3MQIDftuxn1t2MHa9Cz7EKMDBqMTD63HGKE6INbGs
 uDL3EKMEB7OSCK+oq2GcEG9KYmVValF+fFFpTmrxIUZToG8mMkuJJucDozGvJN7Q1NDcwtLQ
 3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwenVAMjX/6JY+lNpY9dJ07e7JIx7bv7zf5Z
 /9TfyR6Lipfp1XQq+TRTstDtRJbqsz9Kbp+erqpfL632cZuJ2UMDyeUyfx79Px0i73fE4P7l
 hZHxNjLS7xm4QptZP5zTKD0cfaS38tIFrtda7sv8Doc9Slq5wjAj9Kbyhpo10U5J/Ozzrgpu
 Ewz2rXunxFKckWioxVxUnAgAImLD3Y4CAAA=
X-CMS-MailID: 20200130124000eucas1p137943be0fe3e5e1eb45e705dc5c46431
X-Msg-Generator: CA
X-RootMTR: 20200130124000eucas1p137943be0fe3e5e1eb45e705dc5c46431
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200130124000eucas1p137943be0fe3e5e1eb45e705dc5c46431
References: <CGME20200130124000eucas1p137943be0fe3e5e1eb45e705dc5c46431@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_044004_504393_BF20A8A4 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaHNldCBpcyBhIFBvQyBzaG93aW5nLCBpdCBpcyBwb3NzaWJsZSBhbmQgYWR2YW50
YWdlb3VzIHRvCmludGVncmF0ZSBwbGF0Zm9ybSBzZXR1cCBjb2RlIGluIHRoZSBrZXJuZWwgdHJl
ZSBpbnN0ZWFkIG9mIG1haW50YWluaW5nCml0IGluIGEgc2VwYXJhdGUgYm9vdGxvYWRlciBwcm9q
ZWN0LgoKQnJpbmdpbmcgdXAgYSBuZXcgQVJNIHBsYXRmb3JtIHRvZGF5IHJlcXVpcmVzIGRldmVs
b3BpbmcgdGhlIGZvbGxvd2luZwpwaWVjZXMgY29kZSBpbiBib3RoIGJvb3Rsb2FkZXIgYW5kIGtl
cm5lbDoKCisgcGxhdGZvcm0gc2V0dXAgKERSQU0sIG1pbmltYWwgc2V0IG9mIGNsb2NrcyBhbmQg
UE1JQ3MgZXRjKQogIC0gbWluaW1hbCBzZXR1cCBpbiBib290bG9hZGVyCiAgLSBmdWxsIHNldHVw
IGluIGtlcm5lbAorIGRldmljZSBkcml2ZXJzIChzdG9yYWdlLCBuZXR3b3JrIGludGVyZmFjZSwg
ZGlzcGxheSkKICAtIGluIGJvdGggYm9vdGxvYWRlciBhbmQga2VybmVsCgpXZSd2ZSBub3RpY2Vk
IHRoYXQgbW9zdCBjb2RlIHJlcXVpcmVkIGluIGJvb3Rsb2FkZXIgY2FuIGJlIHBvcnRlZCBmcm9t
CkxpbnV4LiBUaGlzIGlzbid0LCBob3dldmVyLCBlZmZvcnRsZXNzLiBXZSBhbHNvIGNvbnNpZGVy
IGZ1cnRoZXIKbWFpbnRlbmFuY2Ugb2YgdHdvIGNvcGllcyBvZiBjb2RlIGFuIHVubmVjZXNzYXJ5
IGJ1cmRlbi4gTWFraW5nIHBsYXRmb3JtCnNldHVwIGNvZGUgYSBwYXJ0IG9mIGtlcm5lbCBzb3Vy
Y2UgdHJlZSBtYWtlcyBpdCBwb3NzaWJsZSB0byByZXVzZSBleGlzdGluZwpMaW51eCBkcml2ZXJz
IGluIGJvb3Rsb2FkaW5nIGVudmlyb25tZW50IGFzIHdlbGwgYXMgdG8gYXZvaWQgY3JlYXRpbmcK
YW5kIG1haW50YWluaWcgdHdvIGRpZmZlcmVudCBkcml2ZXJzIGZvciBuZXcgZGV2aWNlcy4KClRo
ZSBmb2xsb3dpbmcgcGF0Y2hlcyBlbmFibGVzIGJ1aWxkaW5nIExpbnV4IGltYWdlIHRoYXQgaXMg
bG9hZGFibGUKZGlyZWN0bHkgYnkgT2Ryb2lkIFhVNCdzIGZpcm13YXJlIChibDIpLiBUaGUgZ29h
bCBmb3Igc3VjaCBhcnJhbmdlbWVudAppcyB0byB1c2UgTGludXggYXMgYSBib290IGxvYWRlciB0
aGF0IGxhdGVyIHJ1bnMgYSBmdWxsIE9TIHVzaW5nIGtleGVjLgoKSGFyZGtlcm5lbCwgdGhlIHZl
bmRvciBvZiBPZHJvaWQgWFU0LCBwcm92aWRlcyBzaWduZWQsIGFuZCB0aHVzLApjdW1iZXJzb21l
IHRvIHJlcGxhY2UsIHBsYXRmb3JtIHNldHVwIGNvZGUgKGJsMSBhbmQgYmwyKS4gV2UgZGVjaWRl
ZCBub3QKdG8gcmVwbGFjZSB0aGVtLCBidXQgcmF0aGVyIG1ha2UgdGhlIGtlcm5lbCBsb2FkYWJs
ZSBieSB0aGUgYmwyIGNvZGUgYnkKYWRkaW5nIG9ubHkgYSB0aW55IGFtb3VudCBvZiBjb2RlIHRv
IHNldCB1cCB0aGUgY29uc29sLiBUaGUga2VybmVsCm5lZWRzLCBob3dldmVyLCB0byBiZSBzbWFs
bCBlbm91Z2ggdG8gYmUgbG9hZGVkIHN1Y2Nlc2Z1bGx5ICgxIE1pQikuCgpUaGUgcGF0Y2hzZXQg
YWxzbyBwcm92aWRlcyBoc2luaXQgKGluIHRvb2xzL2hzaW5pdCkgdXNlcmxhbmQgcHJvZ3JhbSwK
d2hpY2ggaXMgYSB0aW55IGluaXQgcHJvZ3JhbSB0aGF0IGV4dHJhY3RzIGRlc2lnbmF0ZWQgYXJj
aGl2ZSB0bwppbml0cmFtZnMgYW5kIGV4ZWN1dGVzIC9pbml0LiBBdCB0aGUgbW9tZW50IGFueSBp
bml0cmFtZnMgaW1hZ2UgY2FuIGJlCnVzZWQgYXQgdGhpcyBzdGFnZS4KCkFsdGhvdWdoIGhzaW5p
dCBjYW4gYmUgbGlua2VkIGFnYWluc3QgZ2xpYmMgaXQgbWFrZXMgbGl0dGxlIHNlbnNlCmJlY2F1
c2UgdG9nZXRoZXIgd2l0aCB0aGUga2VybmVsIGl0IHdvbnQgZml0IGluIDEgTWlCLiBJbnN0ZWFk
IGl0IGlzCnJlY29tbWVuZGVkIHRvIGxpbmsgaHNpbml0IGFnYWluc3QgbXVzbCBsaWJjLiBJbnN0
YWxsIG11c2wgZnJvbSB5b3VyIE9TCnZlbmRvciBvciBmb2xsb3cgdGhlIHVwc3RyZWFtIGluc3Ry
dWN0aW9ucy4gV2l0aCBtdXNsIGF2YWlsYWJsZSBlbnRlcgp0b29scy9oc2luaXQgYW5kIHJ1biB0
aGUgZm9sbG93aW5nIGNvbW1hbmRzLgoKLS04PC0tLS0tLS0tLS0tLS0tLWN1dCBoZXJlLS0tLS0t
LS0tLS0tLS0tc3RhcnQtLS0tLS0tLS0tLS0tPjgtLS0Kd2dldCAtUCB2ZW5kb3IvIGh0dHBzOi8v
bGliYXJjaGl2ZS5vcmcvZG93bmxvYWRzL2xpYmFyY2hpdmUtMy4zLjIudGFyLmd6CndnZXQgLVAg
dmVuZG9yLyBodHRwOi8vcHJkb3dubG9hZHMuc291cmNlZm9yZ2UubmV0L2xpYnBuZy96bGliLTEu
Mi4xMS50YXIuZ3oKCi4vYm9vdHN0cmFwCgpNVVNMX0RJUj0vdXNyL2xpYi9hcm0tbGludXgtbXVz
bGVhYmkvIFwKR0NDX0NST1NTX0RJUj0vdXNyL2xpYi9nY2MtY3Jvc3MvYXJtLWxpbnV4LWdudWVh
YmkvOC8gXApDUFBGTEFHUz0nLW5vc3RkaW5jIC1pc3lzdGVtIC91c3IvaW5jbHVkZS9hcm0tbGlu
dXgtbXVzbGVhYmkvJyBcCkNGTEFHUz0nLW10aHVtYiAtT3MgLWZmdW5jdGlvbi1zZWN0aW9ucyAt
ZmRhdGEtc2VjdGlvbnMnIFwKTElCQVJDSElWRV9DUFBfRkxBR1M9LUkvdXNyL2luY2x1ZGUvYXJt
LWxpbnV4LW11c2xlYWJpLyBcCkxJQkFSQ0hJVkVfQ19GTEFHUz0kQ0ZMQUdTIFwKWkxJQl9DX0ZM
QUdTPSRDRkxBR1MgXApMREZMQUdTPSItbm9zdGRsaWIgLUwke01VU0xfRElSfS8gLUwke0dDQ19D
Uk9TU19ESVJ9LyAke01VU0xfRElSfS9jcnQxLm8gICR7TVVTTF9ESVJ9L2NydGkubyAgJHtHQ0Nf
Q1JPU1NfRElSfS9jcnRiZWdpbi5vIC1XbCwtLWdjLXNlY3Rpb25zIC1XbCwtLXN0YXJ0LWdyb3Vw
ICAke0dDQ19DUk9TU19ESVJ9L2xpYmdjYy5hICAke0dDQ19DUk9TU19ESVJ9L2xpYmdjY19laC5h
IC1XbCwtLWVuZC1ncm91cCAke0dDQ19DUk9TU19ESVJ9L2NydGVuZC5vICAke01VU0xfRElSfS9j
cnRuLm8gLXMiICBcCkxJQlM9Ii1sYyAtbGdjYyIgXAouL2NvbmZpZ3VyZSAtLWVuYWJsZS1sb2Nh
bC1saWJyYXJpZXMgLS1ob3N0PWFybS1saW51eC1nbnVlYWJpIC0tZW5hYmxlLXN0YXRpYwoKbWFr
ZQotLTg8LS0tLS0tLS0tLS0tLS0tY3V0IGhlcmUtLS0tLS0tLS0tLS0tLS1lbmQtLS0tLS0tLS0t
LS0tLS0+OC0tLQoKVG8gYnVpbGQgYm9vdEltYWdlIGZpbGUgdGhhdCBpcyBsb2FkYWJsZSBieSBP
ZHJvaWQgWFU0J3MgYmwyIHRoZSBmb2xsb3dpbmcKY29tbWFuZHMgbmVlZCB0byBiZSBpc3N1ZWQg
KENST1NTX0NPTVBJTEUgYW5kIEFSQ0ggb21taXRlZCkKCi0tODwtLS0tLS0tLS0tLS0tLS1jdXQg
aGVyZS0tLS0tLS0tLS0tLS0tLXN0YXJ0LS0tLS0tLS0tLS0tLT44LS0tCm1ha2Ugb2Ryb2lkeHU0
X2Jvb3Rsb2FkZXJfZGVmY29uZmlnCm1ha2UgZHRicwptYWtlIGJvb3RJbWFnZQotLTg8LS0tLS0t
LS0tLS0tLS0tY3V0IGhlcmUtLS0tLS0tLS0tLS0tLS1lbmQtLS0tLS0tLS0tLS0tLS0+OC0tLQoK
VGhlIHJlc3VsdGluZyBhcmNoL2FybS9ib290L2Jvb3RJbWFnZSBzaG91bGQgYmUgcmVuYW1lZCB0
byB1LWJvb3QtbW1jLmJpbiBhbmQKZmxhc2hlZCBvbnRvIGFuIFNEIG9yIGVNTUMgY2FyZCB3aXRo
IHNkX2Z1c2luZyBzY3JpdHAuCgoKCgrFgXVrYXN6IFN0ZWxtYWNoICg0KToKICBzY3JpcHRzL2R0
YzogdXBkYXRlIGZkdGdldC5jIHRvIHVwc3RyZWFtIHZlcnNpb24gdjEuNC43LTU3LWdmMjY3ZTY3
NGQxNDUKICBzY3JpcHRzOiBhZGQgZ2V0X2NvbnNvbGVfYmFzZS5wbAogIEFkZCB0b29scy9oc2lu
aXQKICBib290L2xvYWRlcjogRW5hYmxlIGJ1aWxkaW5nIGJvb3Rsb2FkZXIgcmVwbGFjZW1lbnQg
Zm9yIE9kcm9pZCBYVTQKCiBhcmNoL2FybS9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgIDggKwogYXJjaC9hcm0vTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgICA4ICstCiBhcmNoL2FybS9ib290L01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAg
ICAgfCAgMTcgKwogYXJjaC9hcm0vYm9vdC9sb2FkZXIvS2NvbmZpZyAgICAgICAgICAgICAgICAg
IHwgIDIzICsrCiBhcmNoL2FybS9ib290L2xvYWRlci9NYWtlZmlsZSAgICAgICAgICAgICAgICAg
fCAgNDIgKysrCiBhcmNoL2FybS9ib290L2xvYWRlci9vZHJvaWQtY29uc29sZS5jICAgICAgICAg
fCAxMzYgKysrKysrKysKIGFyY2gvYXJtL2Jvb3QvbG9hZGVyL29kcm9pZC1jcnQwLlMgICAgICAg
ICAgICB8ICA0MCArKysKIGFyY2gvYXJtL2Jvb3QvbG9hZGVyL3BpZ2d5LlMgICAgICAgICAgICAg
ICAgICB8ICAxNCArCiBhcmNoL2FybS9ib290L2xvYWRlci92ZWN0b3JzLlMgICAgICAgICAgICAg
ICAgfCAxMTIgKysrKysrKwogYXJjaC9hcm0vYm9vdC9sb2FkZXIvdm1saW51eC5sZHMgICAgICAg
ICAgICAgIHwgIDE3ICsKIC4uLi9jb25maWdzL29kcm9pZHh1NF9ib290bG9hZGVyX2RlZmNvbmZp
ZyAgICB8IDEyNyArKysrKysrKwogc2NyaXB0cy9kdGMvLmdpdGlnbm9yZSAgICAgICAgICAgICAg
ICAgICAgICAgIHwgICA0ICsKIHNjcmlwdHMvZHRjL01ha2VmaWxlICAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICAgNSArCiBzY3JpcHRzL2R0Yy9mZHRnZXQuYyAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAxMjUgKysrKy0tLS0KIHNjcmlwdHMvZHRjL3VwZGF0ZS1kdGMtc291cmNlLnNoICAg
ICAgICAgICAgICB8ICAgNCArLQogc2NyaXB0cy9nZXRfY29uc29sZV9iYXNlLnBsICAgICAgICAg
ICAgICAgICAgIHwgIDI2ICsrCiB0b29scy9oc2luaXQvTWFrZWZpbGUuYW0gICAgICAgICAgICAg
ICAgICAgICAgfCAgMjkgKysKIHRvb2xzL2hzaW5pdC9SRUFETUUub3JnICAgICAgICAgICAgICAg
ICAgICAgICB8ICA1NiArKysrCiB0b29scy9oc2luaXQvYm9vdHN0cmFwICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgIDcgKwogdG9vbHMvaHNpbml0L2NvbmZpZ3VyZS5hYyAgICAgICAgICAgICAg
ICAgICAgIHwgMTI4ICsrKysrKysrCiB0b29scy9oc2luaXQvaHNpbml0LmMgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAyOTkgKysrKysrKysrKysrKysrKysrCiB0b29scy9oc2luaXQvdmVuZG9y
Ly5naXRpZ25vcmUgICAgICAgICAgICAgICAgfCAgIDUgKwogdG9vbHMvaHNpbml0L3ZlbmRvci9T
SEEyNTZTVU1TICAgICAgICAgICAgICAgIHwgICAyICsKIDIzIGZpbGVzIGNoYW5nZWQsIDExNzcg
aW5zZXJ0aW9ucygrKSwgNTcgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9h
cm0vYm9vdC9sb2FkZXIvS2NvbmZpZwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2Jvb3Qv
bG9hZGVyL01ha2VmaWxlCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9sb2FkZXIv
b2Ryb2lkLWNvbnNvbGUuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2Jvb3QvbG9hZGVy
L29kcm9pZC1jcnQwLlMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2xvYWRlci9w
aWdneS5TCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9sb2FkZXIvdmVjdG9ycy5T
CiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9sb2FkZXIvdm1saW51eC5sZHMKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9jb25maWdzL29kcm9pZHh1NF9ib290bG9hZGVyX2Rl
ZmNvbmZpZwogY3JlYXRlIG1vZGUgMTAwNzU1IHNjcmlwdHMvZ2V0X2NvbnNvbGVfYmFzZS5wbAog
Y3JlYXRlIG1vZGUgMTAwNjQ0IHRvb2xzL2hzaW5pdC9NYWtlZmlsZS5hbQogY3JlYXRlIG1vZGUg
MTAwNjQ0IHRvb2xzL2hzaW5pdC9SRUFETUUub3JnCiBjcmVhdGUgbW9kZSAxMDA3NTUgdG9vbHMv
aHNpbml0L2Jvb3RzdHJhcAogY3JlYXRlIG1vZGUgMTAwNjQ0IHRvb2xzL2hzaW5pdC9jb25maWd1
cmUuYWMKIGNyZWF0ZSBtb2RlIDEwMDY0NCB0b29scy9oc2luaXQvaHNpbml0LmMKIGNyZWF0ZSBt
b2RlIDEwMDY0NCB0b29scy9oc2luaXQvdmVuZG9yLy5naXRpZ25vcmUKIGNyZWF0ZSBtb2RlIDEw
MDY0NCB0b29scy9oc2luaXQvdmVuZG9yL1NIQTI1NlNVTVMKCi0tIAoyLjIwLjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
