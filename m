Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1358319D0A0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 09:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PdHpX/dgZhbitycz334v5LcRO3NVei4TDYY5HueVuuo=; b=sM3LPLNhDkMu7V
	gh5d8IOLmC/MrFnhp3oNCeH8tSLxhiteplxpm+hGllsiM/cSsTJ0dzD060LQfrkzY00z68BxeBIf/
	hZZkYDBBGsUMlMMt6Y0yyuyVUHEM9DyUV1PMD75TTrfZd7VqO4MGmNbQhhLk1p2BmtahfrEKbmuab
	R/AHpmInFUea0DUHvgrIOXbClS0CIuhZo/yMIq1exkiQAkanb609HVKEaw8bFnueTqbffLDQBExAX
	KO1Z3tuh6FsMlsjvXStDe8ON68OgWFahJQ/ZeGWKQ1+0ELaqTxRYaC2JvTD+PSXBluXHmzPklYaoz
	1nHHrrgS8awqDvooqDdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKGKl-0005r9-V7; Fri, 03 Apr 2020 07:01:43 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKGKf-0005ot-58
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 07:01:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1585897268;
 bh=EkV2SM14PkS2hH7V11heDo3fj9DuvpM/R4jaqXFljrg=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=D9FzOY9AF0+AbIWnOYrgGijKr17JTsYJGIVBqrxKGkLKafqaUXIjW4TmZ4TKg1LRX
 +52J+WZkfuk+Gd8ThqMM+7EBs9qhTLclZUpO/vLooTV3ULxmecQ/pYmkmy4TIUwIbt
 8Ie4yO6e8l8kGFr8jwjZ+i+Sej5PebC4k8nPH5Mg=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.3] ([93.135.25.116]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0M4ZPc-1j7vZI1YM8-00ykb1; Fri, 03
 Apr 2020 09:01:08 +0200
Subject: Re: [PATCH v2] ARM: zx: Delete duplicate error message in
 zx296702_pd_probe()
To: Tang Bin <tangbin@cmss.chinamobile.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200403013541.20904-1-tangbin@cmss.chinamobile.com>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <cc86a4d1-ab0c-f820-79f0-50604e42b4d7@web.de>
Date: Fri, 3 Apr 2020 09:00:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200403013541.20904-1-tangbin@cmss.chinamobile.com>
Content-Language: en-US
X-Provags-ID: V03:K1:nJ+YRSw1ed2LHI/C4P88llob8EijjSn4+UvXigEIPHrVui05bMv
 o6PaXknS11NLLIIlkjI0Thff3VnvyEp5r+ikiorsOzU8AdNVFow/jv3f/xtdIRpypuiYsBs
 J36+lUdyJm+uAKHLM8bonMR5d2SrBlVFCoWTzddAusnpCvChuu3VYtU3pCiW1fE2pszDw1Q
 LN/PHkF3X53GP+h/+godw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:j96MO/R3ojU=:xsd4H2t+Lo6eROsmJNFsHI
 ZXuOu7GdsTeqOj8CN0182Gxhc0RsoRB6zULTKWYot8fri4q15PTjombo+KSSERB1ZF+buuaKZ
 DxObddH0dxprawyzzYgiTIDsqP0FqH7W/5ej78+gAKZl8TxGQDTcsZoLFZNoH6K8NPbjrb1rF
 sDCsIoS58PE6u4D0/GeYVf1YPyboqYhHd2Ie9WjuT0Ij6sR4uOdfeRE3+r6rzC1dKLedyB7r9
 vXxndRuT7PXvwn4dTaVZo41lDzLeV8XRmWa9h+1bfOhiexb0YciN7DOfQbk4b0WLHJWTwGhk9
 g345y/TE8lpXEPieJ6sI/kJsezElqF3DWpabOQXBhrifI7f2u69OyP6lgSbT/8/kQzl1TtdN1
 pxa8D0UGafaU2pl9783EhI1GO6xg4jxyrd0kQ5tB5uWeilKS0a2rCwk9T0vQeqijYiUiDtpa4
 ktoqctZLRiNUUIJwkGj2cA9ygkHFq1La3AhlC8rWrVkyWnPiy6GHG1JYTCeZ3YYhS83ySsQ5W
 t7kR0Nbio7EQXrvloE7HJqedKcBc1JRMs9teWZvjTG0rRSaIbcBlOwKosBuZvVpWZ97jbMvFy
 I8sf1RADdaLInhRn5kOl+YqsKE8pSbQ6w30GNmrCtDlKttXLIovTBu+1bzGNv/OouYuz9qDG0
 mg7crkGI8NMhR67LBRlbM/0rQxAYpB+0F4E5BI0ET5m6mz5VGDiq+2saV2w/Hv2lWUTH479AU
 1tgWdb8JSAkYQ1nVzAfMxNcUovMjfGUx/eslinan+6N7K2Ud9W6Y2TJhx6s6hnzOC9m3t8bGc
 xHDg2MRTjH6AvZURUnrPYF032iFr6I0l2ZalJUdoqIO7kF14vWPAiwq26K8BseO42LcT8nAUk
 JDJJ4BhtfTPGJwXQhDbf4E3TS645KwskKs/6X6W81XmbZ2esF/M7fDxWkQeAL/2Ugsbiut/ro
 tl3J03Np7HYlAfbsR8uxJCppYOUUCdmXlYRPGle3ZEtjaDRxdTh3L/Ym7WJkVexHtyVSV+sIl
 IjkMCRyL+7GjRdkknszFtwZCjxKYoWrAtjURi5xKCj+ge16iMPfi5I1Sx0sNyvLQPVBAT+pYF
 Ll9aeb7gippnrodXo2IJ/Kb1+MvaPdI1HusRPxkpeuf2/yUakK98am429Iqc5jhf3toXrjOdV
 lHdOAQQB5rg1EcXlwEIgQWnFotlWzON9EI2kNo6R0gV7lJEnO/dS/jxfhHEfFM9bQBLnSdSOT
 FdfV58KQq+fy8jO0G
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_000137_534097_9C3AF053 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [markus.elfring[at]web.de]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jun Nie <jun.nie@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBJbiB0aGlzIHBsYWNlLGRldm1faW9yZW1hcF9yZXNvdXJjZSgpIGhhcyBhbHJlYWR5IGNvbnRh
aW5zIGVycm9yCj4gbWVzc2FnZSwgc28gZGVsZXRlIHRoZSBkdXBsaWNhdGUgZGV2X2VyciBtZXNz
YWdlLgoKUGxlYXNlIGZpeCBzdWNoIGEgY29tbWl0IG1lc3NhZ2UuCgoqIEkgZmluZCBhbiBvdGhl
ciB3b3JkaW5nIG1vcmUgYXBwcm9wcmlhdGUuCgoqIEl0IHNlZW1zIHRoYXQgeW91IHN0dW1ibGUg
b24gY2hhbGxlbmdlcyB0byBhZGQgc3BhY2UgY2hhcmFjdGVycwogIChhZnRlciBkb3VibGUgY29s
b25zIG9yIGNvbW1hcykuCgoqIFRoaXMgaXMgYW5vdGhlciBhdHRlbXB0IGZvciB0aGUgcHJldmlv
dXMgdXBkYXRlIHN1Z2dlc3Rpb24KICDigJxBUk06bWFjaC16eO+8mnJlbW92ZSBkdXBsaWNhdGUg
ZGVidWcgbWVzc2FnZeKAnS4KICBodHRwczovL2xvcmUua2VybmVsLm9yZy9wYXRjaHdvcmsvcGF0
Y2gvMTIwMzc2NC8KICBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1hcm0ta2VybmVsLzIw
MjAwMzAzMDMxNzI1LjE0NTYwLTEtdGFuZ2JpbkBjbXNzLmNoaW5hbW9iaWxlLmNvbS8KCgo+IFNp
Z25lZC1vZmYtYnk6IFRhbmcgQmluIDx0YW5nYmluQGNtc3MuY2hpbmFtb2JpbGUuY29tPgoKSSBm
aW5kIHRoaXMgdGFnIGludGVyZXN0aW5nIGluIGEgc3BlY2lmaWMgd2F5LgpXaWxsIHRoZSB1c2Ug
b2YgeW91ciByZWFsIG5hbWUgdHJpZ2dlciBhbnkgbW9yZSBjb25zZXF1ZW5jZXMgYWxzbwpvbiBv
dGhlciBwYXRjaGVzPwpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVs
L2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9Eb2N1bWVudGF0aW9uL3Byb2Nlc3Mvc3VibWl0
dGluZy1wYXRjaGVzLnJzdD9pZD1iZWY3YjJhN2JlMjg2Mzg3NzA5NzJhYjI3MDlhZGYxMWQ2MDFj
MTFhI240NTgKCgpIb3cgZG8geW91IHRoaW5rIGFib3V0IHRvIGNoYW5nZSBhbnkgbW9yZSBzb3Vy
Y2UgZmlsZXMKaW4gYSBzeXN0ZW1hdGljIHdheT8KClJlZ2FyZHMsCk1hcmt1cwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
