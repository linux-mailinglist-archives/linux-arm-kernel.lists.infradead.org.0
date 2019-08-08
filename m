Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F3D86796
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 19:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C795yROYgFnq2Hcr7I4R1nK5aVAyx1hnwK78CKPkiXc=; b=GMldLO8YP7tJ6C
	/0mL1UqSadYGmPWOzk1u4FwhZgB4R7rF3VFDLOGlUOG/vZZqbMKkzgFzQVXEpw+ymYLeO4ceACCx3
	em7OGjGRs/lNmG1UnVc7ZNn2zxmqm8zO0l08lMvnZobNU3QYZkoPPyIIyHJCypbdYtUW8JjB8xZvZ
	5fPiQNuLBdRj5pVNFBQs0Prh1WUeLWB8+6QJHNp1l7mR2FIV95yvf2Hz0ghonSKk8Fwvh1cIxdljd
	YkY8ZaQVMMMyYF7XINnbRVxshuAp8snMArCfc8or4wem8jBFsZIcIiXCkmRb1MaGgyTHJX/DUOkUn
	o3vBW/dMogMut56EQGZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvlm3-0000TV-LZ; Thu, 08 Aug 2019 17:00:23 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvllr-0000MR-9E
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 17:00:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565283602;
 bh=zZkX70dLHdMHL6hyofGaCvGcbMThtGfaPzzjiLd6jWo=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=kHPh0W3s0HYLWiPHLbTi2ubt/8L6En+CfHUe9GoJcmOVm3Be/7ZsV4iZvGf3ZrZid
 i9WFDVmHo6afXqjMG+yYn3Pkua2lYMmmpwHPgWo/bdqyX9scRaLTM9aib7q7zRdpDX
 IfYDmZ5iqNdY3Ixo62nvuZmNPpp7losklrEhntIs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([109.90.233.87]) by mail.gmx.com (mrgmx101
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0MSZ6u-1hlpdW0Mnk-00RVGA; Thu, 08
 Aug 2019 19:00:02 +0200
From: =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To: linux-doc@vger.kernel.org
Subject: [PATCH 2/2] Documentation/arm/sa1100/assabet: Fix 'make
 assabet_defconfig' command
Date: Thu,  8 Aug 2019 18:58:56 +0200
Message-Id: <20190808165929.16946-2-j.neuschaefer@gmx.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190808165929.16946-1-j.neuschaefer@gmx.net>
References: <20190808165929.16946-1-j.neuschaefer@gmx.net>
MIME-Version: 1.0
X-Provags-ID: V03:K1:le7Oa6YammkW5O1nxK9SNbOka4/NAc926M3Lalyv0vd1UdL7wK2
 0cODCpflJuLU31MX1N42QwWEWWVwymlS+vhN9hd2PWZqXg5xSmJ8WYbE1SA20stCwTwz5l6
 USUFUvvv57QJGvgxy4S8+T4LFOIByTRESmQWTwV1Gujiz9f/UoH9zoMtFXxLRmz7nkABJOd
 7G3rCgrCzKQjZhNC+So2g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:a3MDB1l8RQk=:6MsxMj9SyaS/sHfF1sFLxG
 1nKhn5ofu6v5zeQpDxG6/V1j/f3ZrtFZumOmrNhVFk0N10FQwszQq+fNbMwa1RKvQxWoFwZ2W
 nKlE04Wdygs+3LuWoQ6urz1zvJOShYhaTKrGnPGNDzvMSmGHMl1+HxVfgcFWVa1wjhImQVuhL
 jn3Bmz1+OsM50kZgQvvNMPRh9AxVbFH5+FhrMl0vBS0hR/H4xqzhcnNEf0beG4oYXat4nDwT/
 NU98QHboozLZMQLV2Mg23v9pUwnxh3Zgg6YfeXRw6Mnp+88lsp/Ap8mrZxoxc1M4GPod7jywJ
 V473qjFTI/PiXBfZyP3SvDga7CLRt0MgDbPhhS5x+EvSq3HvuFq1lDxTvd47puV81LVwobE5P
 +QsrzVaBMr3l/VdCfCkZqB98OwPmLXxvfbBVfxtb07dX2uTMITsKNDiOLN2X6g5/632m7JJYI
 BnaatyP+UMGdRZwaRoFVDfYOp2mH3G7XtfWSwejJnP3g1NGRLI4og/MVN2/hMAOVdp8QEJgaf
 ubGxoFbfGJ/hJS9Iov0sM2WIaxy0xk456Hcw8HSVqKGRPU+0E2ko8a7VOJH0uBteGH8Nh8BW3
 E3bkvF/NeQkxm1C+gSSlbMG/NUegIpMBKQje8Vs4oFpdchu+R6Od2XiZdNl+eSfTAZmf6jBvE
 cyP+w79rA3sh+HIeVAG1MYz6ISOUJiJPwQGtBpUUrelh3BK+rMhOyYob+t9hbLAaH21I9H5JM
 0BZB+QibMQVqvtrjeX2P1oihUY2IdhcWlf4IAprHzqv3srIh/0T0XTDsEGfYQ2z3kQAdfOzS1
 NiF1KT2fJnX8BMXKf30d7KLoOR0hT5Drre+ggWpUNQlQjU70dTcYkM3VnRuXolPYo7p3mhq2s
 DW7bpHwtl3/7Ox3vzZL/Cc15v4/ZnteEy//6+r5nb5kCXgxsbKn9GWtgcQB5kRcn2rtwzN1yH
 4pTh7ty36U4ZkdN+RBtBAe4rLSancGLS4mn72Ui8n6k2l2Gzo4PZYcnbP1Qw3LigqKnrV6Mpd
 iVQZBmPORUqemd2SmurDEPyt5yFT9Cx/4mqDA7cIs4hI8KQCf/ElCDAAQLdP5p9sI2IlcFNHr
 2QgdB2TQhNJdwdB4Gm9QhFPJOPi1zOxA/ql8HU+tx234ts8ajgnt1MCVsz68Kren+TKPfzZVJ
 XZwro=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_100011_633353_CD1625DF 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (j.neuschaefer[at]gmx.net)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 linux-arm-kernel@lists.infradead.org, Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Im1ha2UgYXNzYWJldF9jb25maWciIGRvZXNuJ3Qgd29yay4KClNpZ25lZC1vZmYtYnk6IEpvbmF0
aGFuIE5ldXNjaMOkZmVyIDxqLm5ldXNjaGFlZmVyQGdteC5uZXQ+Ci0tLQogRG9jdW1lbnRhdGlv
bi9hcm0vc2ExMTAwL2Fzc2FiZXQucnN0IHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9hcm0vc2Ex
MTAwL2Fzc2FiZXQucnN0IGIvRG9jdW1lbnRhdGlvbi9hcm0vc2ExMTAwL2Fzc2FiZXQucnN0Cmlu
ZGV4IDNlNzA0ODMxYzMxMS4uYTc2MWUxMjhmYjA4IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9u
L2FybS9zYTExMDAvYXNzYWJldC5yc3QKKysrIGIvRG9jdW1lbnRhdGlvbi9hcm0vc2ExMTAwL2Fz
c2FiZXQucnN0CkBAIC0xNCw3ICsxNCw3IEBAIEJ1aWxkaW5nIHRoZSBrZXJuZWwKCiBUbyBidWls
ZCB0aGUga2VybmVsIHdpdGggY3VycmVudCBkZWZhdWx0czo6CgotCW1ha2UgYXNzYWJldF9jb25m
aWcKKwltYWtlIGFzc2FiZXRfZGVmY29uZmlnCiAJbWFrZSBvbGRjb25maWcKIAltYWtlIHpJbWFn
ZQoKLS0KMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
