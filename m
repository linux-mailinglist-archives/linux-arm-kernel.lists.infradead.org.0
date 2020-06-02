Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0581EBFD7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 18:19:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NEA4irg6svT38n743yn55aUrF8PpQti3i6xBLl9iPB0=; b=SNlvvk0sP3g1Qx
	pa8jxBehmJ5oPJAICZC6bb7u+W8iZkf2Q+s3tJzZlkSYpy/YoUF+WDjGRxKRzyIJz+0z1QXbqll89
	VgzOEpzXO7AtPSZbDLqe2GJTLlmQxJX9gbxHNY8/mKD+FfbskfE0WDDVgYHwGrdDnmm9N8AAfxj9b
	1tzUXjku76M6YTA8dfj+Rx0kDYDGTr1zcfQLsvAcP+PQmiE7HarHKLHpfxIW7BqP+oGhOckB6t+tr
	fMrNNaxgeu1Y4ivmFbmcZ7I41GJJgPklTHN9FodGS6S+hHmCVaAQnMmEsrhhrzRnWr0D1muinYCsG
	nZcklP4f4Qq5A3i7rvfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg9cq-0001tm-ES; Tue, 02 Jun 2020 16:18:54 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg9bh-0000tZ-I0
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 16:17:43 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200602161739euoutp01f3a3313ebf46b75fa9282bf73789cd68~UxlpTB27s2975229752euoutp01F
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  2 Jun 2020 16:17:39 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200602161739euoutp01f3a3313ebf46b75fa9282bf73789cd68~UxlpTB27s2975229752euoutp01F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591114659;
 bh=HFutmAJ4iU4eRu//A59XEGsqCOlB4bks5rPsSUwsxYM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kDpKFxTftvFUMTsuqhWkNRs1K2P8Rux1Eqlig8Pq10NSNoSQgDoRiosKBa/HgsPA7
 XtiAFavdlsCsxbMQ7nzCyQ05MG+wYu8Hem1zvvhtc247dLVnar+24QsJHyf89WhyfH
 7EX0KJI1QSodNh8eTtnzblY1dDDr6VU0wQ3qIu+4=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200602161739eucas1p1b1a27cd4e3f6ba759fb3fec49fc9e4cb~Uxlo62EXM2721427214eucas1p1u;
 Tue,  2 Jun 2020 16:17:39 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id A8.50.61286.3AB76DE5; Tue,  2
 Jun 2020 17:17:39 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200602161738eucas1p2ccfaa7610dc6f76e209ba96d6278259e~UxlolbcZw0409404094eucas1p2I;
 Tue,  2 Jun 2020 16:17:38 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200602161738eusmtrp156e8802aab6b914fd5875ae556f848fe~Uxlok0RoM2876728767eusmtrp1T;
 Tue,  2 Jun 2020 16:17:38 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-40-5ed67ba352e6
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id C2.DE.08375.2AB76DE5; Tue,  2
 Jun 2020 17:17:38 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200602161738eusmtip2cb585681ba0044c7b29d1854d16b361d~UxloRNSvZ0083200832eusmtip2X;
 Tue,  2 Jun 2020 16:17:38 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: Russell King <linux@armlinux.org.uk>, Masahiro Yamada
 <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Thomas
 Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>, Kees Cook
 <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>, Ben Dooks
 <ben-linux@fluff.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/5] arm: Add kexec_image_info
Date: Tue,  2 Jun 2020 18:17:30 +0200
Message-Id: <20200602161731.23033-5-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200602161731.23033-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrJKsWRmVeSWpSXmKPExsWy7djPc7qLq6/FGcxdwGqxccZ6VotJ6w4w
 Wdxs3M1kcaY71+LmoRWMFpseX2O1uLxrDpvFoal7GS3WHrnLbvHwwQ1Wi9X/TjFafJjwn8ni
 z/6fLBabN01lduDzuHztIrPH7IaLLB5/V71g9liwqdRj06pONo871/awebw7d47dY/OSeo8J
 H96yefRtWcXo8XmTXAB3FJdNSmpOZllqkb5dAlfG81vxBRP5Ko48vMXSwHiQu4uRk0NCwESi
 e/VK5i5GLg4hgRWMEtc6DjJBOF8YJZ4eec0K4XxmlPi+4w8jTMuEvgVgtpDAckaJZ5NdIIqe
 M0pMXTmFGSTBJuAo0b/0BFi3iMBXJoldU9vZQBxmgSuMEg/3b2MCqRIWMJSY/v8S0CgODhYB
 VYkHl9lAwrwC1hLXLv9mgtgmL9G+fDsbSAmngI3E7C85ECWCEidnPmEBsfkFtCTWNF0Hs5mB
 ypu3zmaGaJ3KIfFqUTaE7SIxt+8/C4QtLPHq+BZ2CFtG4vTkHhaQ8RIC9RKTJ5mBXCkh0MMo
 sW3OD6h6a4k7536BncAsoCmxfpc+RNhR4t/JVmaIVj6JG28FIS7gk5i0bTpUmFeio00IolpF
 Yl3/HqiBUhK9r1YwTmBUmoXkl1lI7p+FsGsBI/MqRvHU0uLc9NRiw7zUcr3ixNzi0rx0veT8
 3E2MwAR3+t/xTzsYv15KOsQowMGoxMNrYHgtTog1say4MvcQowQHs5IIr9PZ03FCvCmJlVWp
 RfnxRaU5qcWHGKU5WJTEeY0XvYwVEkhPLEnNTk0tSC2CyTJxcEo1MJYVp76aXGOVFtbaPzWh
 87nQaf/WNL+6Ko35ryfwGq1bwXvYzspK0Dfy5uI6J/O9aW7Ri49ob4xunTN/UtqP/QEKzbZh
 9YI2qX7Hq7+/+tWpLJL9y0t3+4KeKr+kFoN3DOluvLk357WdfCR2pv/PLo87s9zifhl27cye
 XROU8aA4fnnEoQc5SizFGYmGWsxFxYkAXv+GrWwDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHeXfOzo7a7DSNXvzQZRCC1PQ4da95ofpgJ4ky+la2NfTgpF10
 Z7O0D2pC5QKbkWUzh0Sm2WU4u0gXzCmVzUydzGkXXGmaXRCT0lJrJ4n89vD///7Pw8PzkJjk
 Ex5B5upNrFGv1kqJYNy9+PTt5svHvMqY7plNqLnaIURnbz0WoKHSBwLUfVqHhlyNADnfe4XI
 c/8SgVxVjwC62flGhPwjPiG6vvgcoCnrbwGab5vDUYuzCtsayni8fRhTU9KHMwtNExhT5zQz
 zqZygnntfUgwX3t6REzLlWLGOvWFYCpuNwHmm3NtRsh+WbLRYDax6zUGzpQiPUCjWBmdiGSx
 cYkyWq44uCU2XhqdmpzNanMLWGN06iGZZnxYlVcZerTTP4yXgPYQCwgiIRUHrRV1wAKCSQlV
 D6Drql1kAWTAiIDXanOWmDA477UQS8wYgL3nG0W8QVDb4Jn6Z0LeCKcWBLDd5v5LYZQXwGZr
 F8ZTYRQNL/zuB3xXnNoIRzwEL4upJOj1/BIsTVgHTzbcI3gkiEqGNTNaXpZQOuhvmBQt4atg
 18VRnEcwKhI67BJeXklFwRvHB3G+xgJdyu7UYFYgsS1L2P4nbMuoOoA1gXDWzOlydBwt49Q6
 zqzPkWUZdE4QOPTdJ3MtraC/eZ8LUCSQrhDH0F6lRKgu4Ap1LgBJTBou3v7CrZSIs9WFRazR
 oDKatSznAvGBJSuxiNVZhsDb6E0qOp5WoERaIVfIE5B0jfgU1Z4poXLUJvYwy+axxn85ARkU
 UQKKI3dO/GSmHcK28vSPuz77X46iHyktprQys2EHo5iF7nxNm6XWr3y1t1c8acygUauvss5H
 jU+bhwbjhgfO2eT2dxtI3+4KnXbW5SotO8Ht+eD5bh7jqqM60scyHfFHxoVkfofKkFRkSEhQ
 A59qIc1hUhZa7GMDnF3WLMU5jZqOwoyc+g+GBxG0/gIAAA==
X-CMS-MailID: 20200602161738eucas1p2ccfaa7610dc6f76e209ba96d6278259e
X-Msg-Generator: CA
X-RootMTR: 20200602161738eucas1p2ccfaa7610dc6f76e209ba96d6278259e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200602161738eucas1p2ccfaa7610dc6f76e209ba96d6278259e
References: <20200601142754.26139-1-l.stelmach@samsung.com>
 <20200602161731.23033-1-l.stelmach@samsung.com>
 <CGME20200602161738eucas1p2ccfaa7610dc6f76e209ba96d6278259e@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_091741_735850_902C1DA5 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
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

QWRkIGtleGVjX2ltYWdlX2luZm8gdG8gcHJpbnQgZGV0YWlsZWQgaW5mb3JtYXRpb24gYWJvdXQg
YSBrZXhlYyBpbWFnZS4KClNpZ25lZC1vZmYtYnk6IMWBdWthc3ogU3RlbG1hY2ggPGwuc3RlbG1h
Y2hAc2Ftc3VuZy5jb20+Ci0tLQogYXJjaC9hcm0va2VybmVsL21hY2hpbmVfa2V4ZWMuYyB8IDI4
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0va2VybmVsL21hY2hpbmVfa2V4ZWMuYyBiL2Fy
Y2gvYXJtL2tlcm5lbC9tYWNoaW5lX2tleGVjLmMKaW5kZXggNzYzMDBmMzgxM2U4Li5jMTBhMmRm
ZDUzZDEgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2tlcm5lbC9tYWNoaW5lX2tleGVjLmMKKysrIGIv
YXJjaC9hcm0va2VybmVsL21hY2hpbmVfa2V4ZWMuYwpAQCAtMzEsNiArMzEsMzIgQEAgZXh0ZXJu
IHVuc2lnbmVkIGxvbmcga2V4ZWNfYm9vdF9hdGFnczsKIAogc3RhdGljIGF0b21pY190IHdhaXRp
bmdfZm9yX2NyYXNoX2lwaTsKIAorLyoqCisgKiBrZXhlY19pbWFnZV9pbmZvIC0gRm9yIGRlYnVn
Z2luZyBvdXRwdXQuCisgKi8KKyNkZWZpbmUga2V4ZWNfaW1hZ2VfaW5mbyhfaSkgX2tleGVjX2lt
YWdlX2luZm8oX19mdW5jX18sIF9fTElORV9fLCBfaSkKK3N0YXRpYyB2b2lkIF9rZXhlY19pbWFn
ZV9pbmZvKGNvbnN0IGNoYXIgKmZ1bmMsIGludCBsaW5lLAorCWNvbnN0IHN0cnVjdCBraW1hZ2Ug
KmtpbWFnZSkKK3sKKwl1bnNpZ25lZCBsb25nIGk7CisKKwlwcl9kZWJ1ZygiJXM6JWQ6XG4iLCBm
dW5jLCBsaW5lKTsKKwlwcl9kZWJ1ZygiICBrZXhlYyBraW1hZ2UgaW5mbzpcbiIpOworCXByX2Rl
YnVnKCIgICAgdHlwZTogICAgICAgICVkXG4iLCBraW1hZ2UtPnR5cGUpOworCXByX2RlYnVnKCIg
ICAgc3RhcnQ6ICAgICAgICVseFxuIiwga2ltYWdlLT5zdGFydCk7CisJcHJfZGVidWcoIiAgICBo
ZWFkOiAgICAgICAgJWx4XG4iLCBraW1hZ2UtPmhlYWQpOworCXByX2RlYnVnKCIgICAgbnJfc2Vn
bWVudHM6ICVsdVxuIiwga2ltYWdlLT5ucl9zZWdtZW50cyk7CisKKwlmb3IgKGkgPSAwOyBpIDwg
a2ltYWdlLT5ucl9zZWdtZW50czsgaSsrKSB7CisJCXByX2RlYnVnKCIgICAgICBzZWdtZW50WyVs
dV06ICUwOGx4IC0gJTA4bHgsIDB4JXggYnl0ZXMsICVsdSBwYWdlc1xuIiwKKwkJCWksCisJCQlr
aW1hZ2UtPnNlZ21lbnRbaV0ubWVtLAorCQkJa2ltYWdlLT5zZWdtZW50W2ldLm1lbSArIGtpbWFn
ZS0+c2VnbWVudFtpXS5tZW1zeiwKKwkJCWtpbWFnZS0+c2VnbWVudFtpXS5tZW1zeiwKKwkJCWtp
bWFnZS0+c2VnbWVudFtpXS5tZW1zeiAvICBQQUdFX1NJWkUpOworCX0KK30KKwogLyoKICAqIFBy
b3ZpZGUgYSBkdW1teSBjcmFzaF9ub3RlcyBkZWZpbml0aW9uIHdoaWxlIGNyYXNoIGR1bXAgYXJy
aXZlcyB0byBhcm0uCiAgKiBUaGlzIHByZXZlbnRzIGJyZWFrYWdlIG9mIGNyYXNoX25vdGVzIGF0
dHJpYnV0ZSBpbiBrZXJuZWwva3N5c2ZzLmMuCkBAIC00Miw2ICs2OCw4IEBAIGludCBtYWNoaW5l
X2tleGVjX3ByZXBhcmUoc3RydWN0IGtpbWFnZSAqaW1hZ2UpCiAJX19iZTMyIGhlYWRlcjsKIAlp
bnQgaSwgZXJyOwogCisJa2V4ZWNfaW1hZ2VfaW5mbyhpbWFnZSk7CisKIAlpbWFnZS0+YXJjaC5r
ZXJuZWxfcjIgPSBpbWFnZS0+c3RhcnQgLSBLRVhFQ19BUk1fWklNQUdFX09GRlNFVAogCQkJCSAg
ICAgKyBLRVhFQ19BUk1fQVRBR1NfT0ZGU0VUOwogCi0tIAoyLjI2LjIKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
