Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEBA1C6484
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 01:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5GJ3lrifXkibgEkvwyK9iUOngO1e3JvzaTG7JlMqsrE=; b=DGk+u7nJOS3EPo
	BfGLZ658su4wcIqJ5alrSeuFgfs9/TNN66RRnjln45poZUkLLkKR0HqtTRs75A0tXpxr3bx791d6I
	myd0ozF9iqTcdz6NSGoz7h2Wy2LdCI8ykP8pi6pQgK5DkiJiHlemZuNRxoKtxg+py8mZEq5gDQYS+
	WjhskAOhcenRLQ3YAUkAuDPyzdee1SjqjRTWzrY9+n0eTTziwLoOPsqgpYw3VXlCx30ghcSKSApgr
	nk/88G5gl7DNeQCU5S98b1Mz9vX9SgYZ/2hnwiQWFVUpSnbEHXzQYIaWxJY22c8Cu9jTlopSbMBnz
	TskHRyRGG0EpzsXeAE7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW71n-0003OT-7K; Tue, 05 May 2020 23:31:07 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW71f-0003Nj-Ig
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 23:31:01 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200505233055epoutp01636fcc471351192063c8f9c9432d884a~MRb8hk-Py1798117981epoutp01h
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  5 May 2020 23:30:55 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200505233055epoutp01636fcc471351192063c8f9c9432d884a~MRb8hk-Py1798117981epoutp01h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588721455;
 bh=d4lcTLfAO29mx7hYn/SJR08/ixSOGb0Quek7/I4UYmY=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=g4X0UMrcjenTD8M+hbeLpWXvuGlsvoYLKHNWIgkSPx70zpzKOEe7p7Ov27M6OsP3g
 2g2+VnxAkUpIvgfsniCGWXKkUIptIVsCl0K8L3JyTcEJcTCgk5dBFUXPpY50u9zTsP
 4/FNoFqbRGJjJf+kfxjq6vKieBrhaFrCNFL+/gnU=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20200505233053epcas2p4379fee68d60693f0130194fd5b6ca6ae~MRb6Sbs-V3256232562epcas2p4G;
 Tue,  5 May 2020 23:30:53 +0000 (GMT)
Received: from epsmges2p1.samsung.com (unknown [182.195.40.189]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 49Gwvb2krvzMqYkt; Tue,  5 May
 2020 23:30:51 +0000 (GMT)
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 A9.47.49908.927F1BE5; Wed,  6 May 2020 08:30:49 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
 20200505233046epcas2p1e341b8367b27486978dfdb61f59bd3ab~MRb0Ifnhh2682226822epcas2p1L;
 Tue,  5 May 2020 23:30:46 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200505233046epsmtrp280475699a3a55e90fcdbb0090788c6e8~MRb0HYxw93225832258epsmtrp2x;
 Tue,  5 May 2020 23:30:46 +0000 (GMT)
X-AuditID: b6c32a45-ae1ff7000000c2f4-80-5eb1f72910b2
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 FF.F1.18461.627F1BE5; Wed,  6 May 2020 08:30:46 +0900 (KST)
Received: from KORCO004660 (unknown [12.36.155.199]) by epsmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200505233046epsmtip1ac1324aa8527edead18fd60a30bcfa80~MRbz9LN7T0624706247epsmtip1H;
 Tue,  5 May 2020 23:30:46 +0000 (GMT)
From: "Hyunki Koo" <hyunki00.koo@samsung.com>
To: "'Greg Kroah-Hartman'" <gregkh@linuxfoundation.org>
In-Reply-To: <20200505142325.GA816056@kroah.com>
Subject: RE: [PATCH v8 1/3] serial: samsung: Replace rd_regb/wr_regb with
 rd_reg/wr_reg
Date: Wed, 6 May 2020 08:30:46 +0900
Message-ID: <000001d62335$33d03410$9b709c30$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQI0UxSWHSK28Xy0fHrtncuuBEPq6wLkGOxnAlyD66Kns7aKkA==
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrFJsWRmVeSWpSXmKPExsWy7bCmua7m941xBi2rDC2aF69ns5iy4QOT
 Rf/j18wW589vYLfY9Pgaq8XlXXPYLGac38dkcWZxL7sDh8emVZ1sHvvnrmH32Lyk3mP9lqss
 Hp83yQWwRuXYZKQmpqQWKaTmJeenZOal2yp5B8c7x5uaGRjqGlpamCsp5CXmptoqufgE6Lpl
 5gCdoqRQlphTChQKSCwuVtK3synKLy1JVcjILy6xVUotSMkpMDQs0CtOzC0uzUvXS87PtTI0
 MDAyBapMyMn4OLW+oJ2nYuKmk8wNjNO4uxg5OSQETCQez+pl72Lk4hAS2MEoMXnpY0YI5xOj
 xPSpv6Ay3xglJh2bwg7T8nnPBqjEXkaJQ+/PQbW8ZJT4+WQaC0gVm4CuxOXFT5hAbBEBc4m5
 D4+DdTALtDJJPHgzHayIU8BAYsWi52BjhQUiJVY/WwFmswioSDxr/cUIYvMKWEq0/exghbAF
 JU7OfALWyyygLbFs4WtmiJMUJH4+XcYKscxJYuOPg2wQNSISszvbmEEWSwhM5ZC4+WAW1A8u
 Es8WrmOFsIUlXh3fAhWXkvj8bi8bhF0vsa9tIjtEcw/Qax+eQjUYS8x61g50HQfQBk2J9bv0
 QUwJAWWJI7egbuOT6Dj8lx0izCvR0SYE0agmse7bCyYIW0ZizdNd7BMYlWYh+WwWks9mIflg
 FsKuBYwsqxjFUguKc9NTi40KDJFjexMjOJ1que5gnHHO5xCjAAejEg+vgfvGOCHWxLLiytxD
 jBIczEoivD4fgEK8KYmVValF+fFFpTmpxYcYTYEBP5FZSjQ5H5jq80riDU2NzMwMLE0tTM2M
 LJTEeTdz34wREkhPLEnNTk0tSC2C6WPi4JRqYOQ506R3dc7+K/Md/66UPqPIMlFz24TVG4p3
 fjwvGhu5iTnOUurfbT/u737WG+MS+tjvrXwuO/GTzbE1E3oSxB5e6yyq3yWtZWwYVlUflRe+
 +P8Bh7fRjG8iug3nF0RcFjA24vScx2qQx/UjY7ewvvZ3y11L+xNeSj38xabzZfq88H875191
 iFJiKc5INNRiLipOBAD3/OVDvQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupkkeLIzCtJLcpLzFFi42LZdlhJTlft+8Y4g57jmhbNi9ezWUzZ8IHJ
 ov/xa2aL8+c3sFtsenyN1eLyrjlsFjPO72OyOLO4l92Bw2PTqk42j/1z17B7bF5S77F+y1UW
 j8+b5AJYo7hsUlJzMstSi/TtErgyviy8yFTQwFnxesF+lgbGLvYuRk4OCQETic97NgDZXBxC
 ArsZJS42f2CGSMhITHixBMoWlrjfcoQVoug5o8Sn89fBEmwCuhKXFz9hArFFBMwl5j48DjaJ
 WaCbSeL4xgMsEB2bGSUO7bnFCFLFKWAgsWLRc7DdwgLhEtuetrKA2CwCKhLPWn+B1fAKWEq0
 /exghbAFJU7OfAJWwyygLfH05lM4e9nC11DnKUj8fLqMFeIKJ4mNPw6yQdSISMzubGOewCg8
 C8moWUhGzUIyahaSlgWMLKsYJVMLinPTc4sNCwzzUsv1ihNzi0vz0vWS83M3MYJjS0tzB+P2
 VR/0DjEycTAeYpTgYFYS4fX5sDFOiDclsbIqtSg/vqg0J7X4EKM0B4uSOO+NwoVxQgLpiSWp
 2ampBalFMFkmDk6pBqZLdd9/ZWnWZDDLWy/T/VQy9SPLV9nndssT5p96ZxN7a4H3vYTvNUeP
 lM89w8w/a8HPbaENXNtXLzgfMoOrRHr9TbNbSzZtKHE6y7WIK3mlRQvHxZDNPlfX/f1wdR3D
 9fkh3Hnu+n56Nmv3cB2ZUVaoof3zvHn4C6ui7zbCGVKCcmUefV5HzQ02X1ikIRP7vMnR+AT/
 sXfdp4U9D2y7zCxkz+BT/ETkW4mE0Dx3r0UnbgUfszj0wHfJ2e/8Jwz3sZ+9ufCRdOqn+8kM
 d1P3hi6SXZN+a1PU+e//2jYtWb/H+2fzC/1+ix9r5YvLdrkw7Hj7Km3Ptjti0mYhbLvsj/69
 +rDoblmIQM/3fylq7asVlViKMxINtZiLihMBZSLuEBwDAAA=
X-CMS-MailID: 20200505233046epcas2p1e341b8367b27486978dfdb61f59bd3ab
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200420013322epcas2p263e72997dd4ebdaf00b095a83a6b6651
References: <CGME20200420013322epcas2p263e72997dd4ebdaf00b095a83a6b6651@epcas2p2.samsung.com>
 <20200420013300.17249-1-hyunki00.koo@samsung.com>
 <20200505142325.GA816056@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_163059_977900_96EC1551 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 'Krzysztof Kozlowski' <krzk@kernel.org>, 'Kukjin Kim' <kgene@kernel.org>,
 linux-serial@vger.kernel.org, 'Jiri Slaby' <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlc2RheSwgTWF5IDUsIDIwMjAgYXQgMjAyMCAxMToyMzowMCBQTSArMDkwMCwgR3JlZyBL
cm9haC1IYXJ0bWFuIHdyb3RlOgo+IE9uIE1vbiwgQXByIDIwLCAyMDIwIGF0IDEwOjMyOjU2QU0g
KzA5MDAsIEh5dW5raSBLb28gd3JvdGU6Cj4gPiBUaGlzIHBhdGNoIGNoYW5nZSB0aGUgbmFtZSBv
ZiBtYWNybyBmb3IgZ2VuZXJhbCB1c2FnZS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBIeXVua2kg
S29vIDxoeXVua2kwMC5rb29Ac2Ftc3VuZy5jb20+Cj4gCj4gVGhpcyBwYXRjaCBzZXJpZXMgY3Jl
YXRlcyB0aGUgZm9sbG93aW5nIGJ1aWxkIGVycm9yLCB3aGljaCBpcyBub3QKPiBhbGxvd2VkOgo+
IAo+ICAgQ0MgW01dICBkcml2ZXJzL3R0eS9zZXJpYWwvc2Ftc3VuZ190dHkubwo+IGRyaXZlcnMv
dHR5L3NlcmlhbC9zYW1zdW5nX3R0eS5jOjE4NjoxMzogd2FybmluZzog4oCYd3JfcmVnX2JhcnJp
ZXLigJkNCj4gZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWZ1bmN0aW9uXQ0KPiAgIDE4
NiB8IHN0YXRpYyB2b2lkIHdyX3JlZ19iYXJyaWVyKHN0cnVjdCB1YXJ0X3BvcnQgKnBvcnQsIHUz
MiByZWcsIHUzMiB2YWwpDQo+ICAgICAgIHwgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn4NCj4g
DQo+IFBsZWFzZSBmaXggdXAgYW5kIHJlc2VuZC4gIEFsd2F5cyBtYWtlIHN1cmUgeW91IGtlZXAg
dGhlIHJldmlld2VkLWJ5DQo+IHRhZ3MgZnJvbSBvdGhlcnMgYXMgd2VsbC4NCj4gDQo+IGdyZWcg
ay1oDQoNCkkgdGVzdGVkIG9uIGxhdGVzdCBrZXJuZWwgdG9kYXkgb25lIG1vcmUgdGltZSwgdGhl
cmUgaXMgbm8gZXJyb3IgYW5kIHdhcm5pbmcgb24gbXkgc2lkZSwgbm90IG9ubHkgcGF0Y2ggMS8z
IGFuZCBwYXRjaCAzLzMNCkxpbmUgMTczNTogICBDQyAgICAgIGRyaXZlcnMvdHR5L3NlcmlhbC9z
YW1zdW5nX3R0eS5vDQpMaW5lIDM0MzogICBDQyAgICAgIGRyaXZlcnMvdHR5L3NlcmlhbC9zYW1z
dW5nX3R0eS5vDQoNCndyX3JlZ19iYXJyaWVyIGlzIG5vdCBkZWZpbmVkIGluIHBhdGNoIDEvMywg
DQphbmQgd3JfcmVnX2JhcnJpZXIgaXMgZGVmaW5lIGFuZCB1c2VkIGluIHBhdGNoMy8zDQppdCBt
aWdodCBiZSBubyB3YXJuaW5nLg0KDQoNCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
