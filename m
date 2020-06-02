Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD271EBFC8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 18:17:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wm8OJ9R7dZw7rB/kmELJwXTAmVCkiQdEhFt2/nBwz/Y=; b=NKXpx3Xvo1YDGw
	/iaHD+tF2wTbvs2f487x1x3QWtrxieezmm8N0dGMHBPOafMgwxV/ddjMYAPl8Gt5V8kLMGcDPRtrm
	umh8Qfbj0x07VscT+k0GPmSgIrKwanNbL0/SuXi9AS4MfF+D9b30nNPTZ0hmrm0rc7i35N7tMVy0E
	UbDchSJUYzvUmskCtZETvFfI1i8AKYaDvD7okSpco5DPIq2MAj2A+BJSXYC8bPFiEM87M9duTB7Os
	PWzvV2PgsD/VCrJxzgON7RM3GP59fRZrcoQjL7FzYSElC4gViJFprmYJwToYsvvXsVWap0Dvdf9a4
	shfB1o9rJvSH0chlqncA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg9bs-0000wd-Hr; Tue, 02 Jun 2020 16:17:52 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg9bg-0000tD-1Z
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 16:17:41 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200602161738euoutp02c3fa6ba7957ab8cd0eae8825dbdc8ebe~UxloZYIYM1321713217euoutp02C
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  2 Jun 2020 16:17:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200602161738euoutp02c3fa6ba7957ab8cd0eae8825dbdc8ebe~UxloZYIYM1321713217euoutp02C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591114658;
 bh=6fQXZmSTsOXD9PCsKsQlhyyv57eMpT0Awzxum+3ePUA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WwGJABCV3T5YO2T+ZVMu0rRDD0bc/H7+1y7Te8I7hyhDH7Ckemw64+oyYedWSe5rQ
 kzBZeB1lm/22jPX/tV64F5ncDXn3+Y6YskBjWip6CPJPbrJ9iXZ+/lfDLZZhOPivjr
 5N/PoWSgLFc5fNe5PG/N3sg2JRAYA/nJIyDmJ2FY=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200602161738eucas1p2f68006fddfbaf01f75f6b20de9c15cbc~UxloGtt9a1812318123eucas1p25;
 Tue,  2 Jun 2020 16:17:38 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id FC.23.60698.2AB76DE5; Tue,  2
 Jun 2020 17:17:38 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200602161738eucas1p27dfbe386bd76555598d5574faf4fdad3~Uxln1dQ011811918119eucas1p25;
 Tue,  2 Jun 2020 16:17:38 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200602161737eusmtrp1f8d7b2dfe4b25ce023e560009a294e0a~UxlnvCMqX2876728767eusmtrp1P;
 Tue,  2 Jun 2020 16:17:37 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-18-5ed67ba2c0f1
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id E0.DE.08375.1AB76DE5; Tue,  2
 Jun 2020 17:17:37 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200602161737eusmtip2ae861338ba4a9a14a2c82f662c12b774~UxlnjrcYK0295502955eusmtip2k;
 Tue,  2 Jun 2020 16:17:37 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: Russell King <linux@armlinux.org.uk>, Masahiro Yamada
 <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Thomas
 Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>, Kees Cook
 <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>, Ben Dooks
 <ben-linux@fluff.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/5] arm: add image header definitions
Date: Tue,  2 Jun 2020 18:17:28 +0200
Message-Id: <20200602161731.23033-3-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200602161731.23033-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTcRTnv3t3dzVn/80eJ42iUR+SfGXFTaMyom5PLIpAaLX0YtE2Y2tW
 BqVLfGU5jWE5P9gyGuaD5lzlI3NGVtZCrKWUtejhAypDR1k2c7tKffud83ucc+DQhLRPGEof
 UR/nNGqFUkYFkvaHY84I82mXPNr5VcLculwnZEpq7wuY3qwmAfP0vIrpdVgQY/3gEjLdjeUU
 4zC2IKbmQZ+Iee/uETI3vU8QM2yYEDDjrWMkU281EuuD2W5XF8GaMrtI9k/VAMFWWHWstSqf
 Yt+4min2q9MpYusrz7KG4S8Ue9FWhdgR64LEGUmBa1I45ZF0ThO19mDg4VJ3ruhYX9jJrvwB
 lIkezClAATTgFZD9xy4qQIG0FFsQGOxuii9GEXQU100xIwiGLa9F05aakisCnriBwF14daro
 R/C2zSb0qSicAEXXHwl9xCzsEUCjMdcfTOAXCN632gU+VQheDXWlXuTDJF4CxXq9vy/G8fCu
 rQXx8xZC7o3bk2aaDsBrwDSq5CUSeHzlI+nDM3E4VOtf+TExKT/XYCJ8swAbaaj3TOdshPL2
 QYLHITDUYZu6Zz50XiokffmAz8KlklW8txCBvfwnyWvi4Y3zl38HAi+FusYovp0AnrEJircG
 Q88XCb9CMJTYSwm+LYa8HCmvXgy1Rc1TgaFwYciCDEhW9t8xZf8dUPZvVgUiqtBcTqdVpXLa
 WDV3IlKrUGl16tTI5DSVFU0+Xae3w3MH3Rs/5ECYRrIgcXSMSy4VKtK1p1QOBDQhmyXe8KxT
 LhWnKE5lcJq0AxqdktM6UBhNyuaKY82D+6U4VXGcO8pxxzjNNCugA0Izkdmmouqbs1XpWwz7
 YvaYT37qjtgV/YG6ZkmSNGz+ptZj0bZ1RU3VZ570pW/P+Y4r+18uokzLRPqi/DxxVuzo7KB5
 t01H92ZszcpOSVra0JpYoEys3Lm7oGN7YmazPI0OyRn4EZcRt/K5bot3fCj3brj5c/tv4vJE
 wKbl66t3dCb/lpHaw4qYcEKjVfwFqt11vHADAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrLIsWRmVeSWpSXmKPExsVy+t/xe7oLq6/FGRycamqxccZ6VotJ6w4w
 Wdxs3M1kcaY71+LmoRWMFpseX2O1uLxrDpvFoal7GS3WHrnLbvHwwQ1Wi9X/TjFafJjwn8ni
 z/6fLBabN01lduDzuHztIrPH7IaLLB5/V71g9liwqdRj06pONo871/awebw7d47dY/OSeo8J
 H96yefRtWcXo8XmTXAB3lJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYmlnqGxeayVkamSvp1N
 SmpOZllqkb5dgl7G9Aft7AV3pSsudr5gbGA8ItbFyMkhIWAisXbSTKYuRi4OIYGljBLP3qxi
 7GLkAEpISaycmw5RIyzx51oXG0TNU0aJ0+f3MIMk2AQcJfqXnmAFSYgI/GWSODjrNFgVs8A1
 RomNE06CVQkLWEqsn/6PEcRmEVCVmNjUxARi8wpYS9w/uJcRYoW8RPvy7WwgmzkFbCRmf8kB
 CQsJ5Eo8XP6KHaJcUOLkzCcsICXMAuoS6+cJgYT5BbQk1jRdZwGxmYGmNG+dzTyBUWgWko5Z
 CB2zkFQtYGRexSiSWlqcm55bbKhXnJhbXJqXrpecn7uJERjV24793LyD8dLG4EOMAhyMSjy8
 BobX4oRYE8uKK3MPMUpwMCuJ8DqdPR0nxJuSWFmVWpQfX1Sak1p8iNEU6MuJzFKiyfnAhJNX
 Em9oamhuYWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNTqoFR2//k8dAlpzK4v3RU
 Vwf33U95f7j40LGyXOZleg3sbI1fHdcJPSyW5kkR6J99cMnsO+43a3hy/d7qezye8WZq2aq/
 j9tfXHPk1dxjxPg651QBl6rvzTcFrK/ULT8mqe5a+H3xvfbba7RYymI3cfxl+7Fnfr1ey3sH
 CaNPeWYd17i+9sbEf4hSYinOSDTUYi4qTgQACKAKBwADAAA=
X-CMS-MailID: 20200602161738eucas1p27dfbe386bd76555598d5574faf4fdad3
X-Msg-Generator: CA
X-RootMTR: 20200602161738eucas1p27dfbe386bd76555598d5574faf4fdad3
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200602161738eucas1p27dfbe386bd76555598d5574faf4fdad3
References: <20200601142754.26139-1-l.stelmach@samsung.com>
 <20200602161731.23033-1-l.stelmach@samsung.com>
 <CGME20200602161738eucas1p27dfbe386bd76555598d5574faf4fdad3@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_091740_216928_F51BC55C 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBzdHJ1Y3R1cmUgd2lsbCBiZSB1c2VkIGxhdGVyIGJ5IGtleGVjX2ZpbGUgbG9hZGVyLgoK
U2lnbmVkLW9mZi1ieTogxYF1a2FzeiBTdGVsbWFjaCA8bC5zdGVsbWFjaEBzYW1zdW5nLmNvbT4K
LS0tCiBhcmNoL2FybS9ib290L2NvbXByZXNzZWQvaGVhZC5TICAgICAgICB8ICAzICstCiBhcmNo
L2FybS9ib290L2NvbXByZXNzZWQvdm1saW51eC5sZHMuUyB8IDEzICsrLS0tLS0KIGFyY2gvYXJt
L2luY2x1ZGUvYXNtL2ltYWdlLmggICAgICAgICAgIHwgNDggKysrKysrKysrKysrKysrKysrKysr
KysrKysKIDMgZmlsZXMgY2hhbmdlZCwgNTMgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0p
CiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vaW5jbHVkZS9hc20vaW1hZ2UuaAoKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9oZWFkLlMgYi9hcmNoL2FybS9ib290L2Nv
bXByZXNzZWQvaGVhZC5TCmluZGV4IDU1NzU4MjY0ZTc3Ni4uMDA1YjE3MmQ1MDRmIDEwMDY0NAot
LS0gYS9hcmNoL2FybS9ib290L2NvbXByZXNzZWQvaGVhZC5TCisrKyBiL2FyY2gvYXJtL2Jvb3Qv
Y29tcHJlc3NlZC9oZWFkLlMKQEAgLTcsNiArNyw3IEBACiAgKi8KICNpbmNsdWRlIDxsaW51eC9s
aW5rYWdlLmg+CiAjaW5jbHVkZSA8YXNtL2Fzc2VtYmxlci5oPgorI2luY2x1ZGUgPGFzbS9pbWFn
ZS5oPgogI2luY2x1ZGUgPGFzbS92N20uaD4KIAogI2luY2x1ZGUgImVmaS1oZWFkZXIuUyIKQEAg
LTIxMSw3ICsyMTIsNyBAQCBzdGFydDoKIAkJLndvcmQJX21hZ2ljX3N0YXJ0CUAgYWJzb2x1dGUg
bG9hZC9ydW4gekltYWdlIGFkZHJlc3MKIAkJLndvcmQJX21hZ2ljX2VuZAlAIHpJbWFnZSBlbmQg
YWRkcmVzcwogCQkud29yZAkweDA0MDMwMjAxCUAgZW5kaWFubmVzcyBmbGFnCi0JCS53b3JkCTB4
NDU0NTQ1NDUJQCBhbm90aGVyIG1hZ2ljIG51bWJlciB0byBpbmRpY2F0ZQorCQkud29yZAlBUk1f
WklNQUdFX01BR0lDMiBAIGFub3RoZXIgbWFnaWMgbnVtYmVyIHRvIGluZGljYXRlCiAJCS53b3Jk
CV9tYWdpY190YWJsZQlAIGFkZGl0aW9uYWwgZGF0YSB0YWJsZQogCiAJCV9fRUZJX0hFQURFUgpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL3ZtbGludXgubGRzLlMgYi9hcmNo
L2FybS9ib290L2NvbXByZXNzZWQvdm1saW51eC5sZHMuUwppbmRleCBmODJiNTk2MmQ5N2UuLjMw
OGU5Y2Q2YTg5NyAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL3ZtbGludXgu
bGRzLlMKKysrIGIvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL3ZtbGludXgubGRzLlMKQEAgLTMs
MTQgKzMsNyBAQAogICogIENvcHlyaWdodCAoQykgMjAwMCBSdXNzZWxsIEtpbmcKICAqLwogCi0j
aWZkZWYgQ09ORklHX0NQVV9FTkRJQU5fQkU4Ci0jZGVmaW5lIFpJTUFHRV9NQUdJQyh4KSAoICgo
KHgpID4+IDI0KSAmIDB4MDAwMDAwZmYpIHwgXAotCQkJICAoKCh4KSA+PiAgOCkgJiAweDAwMDBm
ZjAwKSB8IFwKLQkJCSAgKCgoeCkgPDwgIDgpICYgMHgwMGZmMDAwMCkgfCBcCi0JCQkgICgoKHgp
IDw8IDI0KSAmIDB4ZmYwMDAwMDApICkKLSNlbHNlCi0jZGVmaW5lIFpJTUFHRV9NQUdJQyh4KSAo
eCkKLSNlbmRpZgorI2luY2x1ZGUgPGFzbS9pbWFnZS5oPgogCiBPVVRQVVRfQVJDSChhcm0pCiBF
TlRSWShfc3RhcnQpCkBAIC00Myw3ICszNiw3IEBAIFNFQ1RJT05TCiAgIC50YWJsZSA6IEFMSUdO
KDQpIHsKICAgICBfdGFibGVfc3RhcnQgPSAuOwogICAgIExPTkcoWklNQUdFX01BR0lDKDQpKQot
ICAgIExPTkcoWklNQUdFX01BR0lDKDB4NWE1MzRjNGIpKQorICAgIExPTkcoQVJNX1pJTUFHRV9N
QUdJQzMpCiAgICAgTE9ORyhaSU1BR0VfTUFHSUMoX19waWdneV9zaXplX2FkZHIgLSBfc3RhcnQp
KQogICAgIExPTkcoWklNQUdFX01BR0lDKF9rZXJuZWxfYnNzX3NpemUpKQogICAgIExPTkcoMCkK
QEAgLTEwNyw3ICsxMDAsNyBAQCBTRUNUSU9OUwogICAgIF9lZGF0YV9yZWFsID0gLjsKICAgfQog
Ci0gIF9tYWdpY19zaWcgPSBaSU1BR0VfTUFHSUMoMHgwMTZmMjgxOCk7CisgIF9tYWdpY19zaWcg
PSBBUk1fWklNQUdFX01BR0lDMTsKICAgX21hZ2ljX3N0YXJ0ID0gWklNQUdFX01BR0lDKF9zdGFy
dCk7CiAgIF9tYWdpY19lbmQgPSBaSU1BR0VfTUFHSUMoX2VkYXRhKTsKICAgX21hZ2ljX3RhYmxl
ID0gWklNQUdFX01BR0lDKF90YWJsZV9zdGFydCAtIF9zdGFydCk7CmRpZmYgLS1naXQgYS9hcmNo
L2FybS9pbmNsdWRlL2FzbS9pbWFnZS5oIGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vaW1hZ2UuaApu
ZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmQ1YzE4YTBmNmEzNAotLS0g
L2Rldi9udWxsCisrKyBiL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2ltYWdlLmgKQEAgLTAsMCArMSw0
OCBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAgKi8KKworI2lmbmRlZiBf
X0FTTV9JTUFHRV9ICisjZGVmaW5lIF9fQVNNX0lNQUdFX0gKKworI2lmZGVmIENPTkZJR19DUFVf
RU5ESUFOX0JFOAorI2RlZmluZSBaSU1BR0VfTUFHSUMoeCkgKCgoKHgpID4+IDI0KSAmIDB4MDAw
MDAwZmYpIHwgXAorCQkJICgoKHgpID4+ICA4KSAmIDB4MDAwMGZmMDApIHwgIFwKKwkJCSAoKCh4
KSA8PCAgOCkgJiAweDAwZmYwMDAwKSB8ICBcCisJCQkgKCgoeCkgPDwgMjQpICYgMHhmZjAwMDAw
MCkpCisjZWxzZQorI2RlZmluZSBaSU1BR0VfTUFHSUMoeCkgKHgpCisjZW5kaWYKKworI2RlZmlu
ZSBBUk1fWklNQUdFX01BR0lDMSBaSU1BR0VfTUFHSUMoMHgwMTZmMjgxOCkKKyNkZWZpbmUgQVJN
X1pJTUFHRV9NQUdJQzIgKDB4NDU0NTQ1NDUpCisjZGVmaW5lIEFSTV9aSU1BR0VfTUFHSUMzIFpJ
TUFHRV9NQUdJQygweDVhNTM0YzRiKQorCisjaWZuZGVmIF9fQVNTRU1CTFlfXworCisjaW5jbHVk
ZSA8bGludXgvdHlwZXMuaD4KKyNpbmNsdWRlIDxhc20vc2V0dXAuaD4KKworLyogQVJNIHpJbWFn
ZSBoZWFkZXIgZm9ybWF0ICovCitzdHJ1Y3QgYXJtX3ppbWFnZV9oZWFkZXIgeworCV9fbGUzMiBj
b2RlWzldOworCV9fbGUzMiBtYWdpYzsKKwlfX2xlMzIgc3RhcnQ7CisJX19sZTMyIGVuZDsKKwlf
X2xlMzIgZW5kaWFuOworCV9fbGUzMiBtYWdpYzI7CisJX19sZTMyIGV4dGVuc2lvbl90YWdfb2Zm
c2V0OworfTsKKworc3RydWN0IGFybV96aW1hZ2VfdGFnIHsKKwlzdHJ1Y3QgdGFnX2hlYWRlciBo
ZHI7CisJdW5pb24geworI2RlZmluZSBaSU1BR0VfVEFHX0tSTkxfU0laRSBBUk1fWklNQUdFX01B
R0lDMworCQlzdHJ1Y3QgemltYWdlX2tybmxfc2l6ZSB7CisJCQlfX2xlMzIgc2l6ZV9wdHI7CisJ
CQlfX2xlMzIgYnNzX3NpemU7CisJCX0ga3JubF9zaXplOworCX0gdTsKK307CisKKyNlbmRpZiAv
KiBfX0FTU0VNQkxZX18gKi8KKworI2VuZGlmIC8qIF9fQVNNX0lNQUdFX0ggKi8KLS0gCjIuMjYu
MgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
