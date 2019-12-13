Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD7D11DA95
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 01:08:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nIsx2xUvd/ClIG2saJSM+swWxF/u9zMZCVKMU4Wb7zM=; b=bdk2VBOKCFUNQs
	pGiJsH3VDq7CMCDU0TLUFTT1gw0wx2IZSrSSV3W5zFV+8vC6QuNMraV42e6olGEFNG/bCVfLEo32A
	BDnWnW03e5ZpSlx0aVKyz5ChtmTnVBrJ81rPZc1iN56RybmFBEYFWzL8HLGVjkHFB39KoRjTTpbBD
	e3vZ9E8viQEwAwKeKH62od/c0ppT6iUDbKyzbrxE0VtCApt9cA9Wc3RoNyn9nSq1vyJnIc7WoLxfU
	e/tUn8LfKRuif7ZxJomvVqi9hSg4oFZgVGhHotKAQnmZbuB9Ecovk36qb6Z1m/KT8cAAQ+7TE+LSn
	cpaHN6mmJWs01tsd0eQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifYVe-0004rE-SD; Fri, 13 Dec 2019 00:08:42 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifYV0-0004MY-2W
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 00:08:03 +0000
Received: by mail-pf1-x443.google.com with SMTP id 2so387333pfx.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 16:08:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Euik8RhSRJjHmC28+StnihMZD1d4qJRUDgdRlDVUqg8=;
 b=Vov9+2yB9/3J2+7DANI/wPjle8KZwVg0d5zBvN5FnKFK2vBdtzOq7YcpV9aNTO2UVi
 J+2z+NpVo3Ei+Pl4+oggYNrBLDvL/eMxREVg6SLUIyyiHBghtCgmfaXVT57XltyKauc3
 OzAv3XL2UKiRaOikeC7iTvhrIzspRT8CUNWLLjzmuYT+nYNmZaGi5qcUtIqcam0H124e
 RbclY+ExjONTJH6cmIEhDq6bmEYd9/EAFkqIp/bZq9PKYiVdFbNKprQM4q9hbaC3RKqk
 IGMkNo2fkuWmlu2mT7mfqbIin7ri/Vc8aIKwHHOOpF2FCjzTecK7E3S40SISqeuGnlox
 bD6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Euik8RhSRJjHmC28+StnihMZD1d4qJRUDgdRlDVUqg8=;
 b=RYhgnR3My6BmZgp8aD82zPCYGbyN5wY9QhyW+n7Q79ydxP+bHN0bkhaxdFevRDDduL
 yD/CYapitqD0MlWTohcR6221/Ul1kc1jEi3o+eK81Bwvf/E5cm+wv8mlsTsfV3Ckah1K
 tmbP70LJxy4orVsLjo8N1Sk/ak0a9z1WO3/PK+nS/dK50/olEHjv18XhzQ+Jf7GW4rrg
 JmXFnOPIcJMg//v5YTwF9QGcxuPIx0Fm+Ah7uHSwrVoDg3woXjEkCULeSnC90YUoHs5W
 SyGRcqTSPxTg08u81w5YoWEUCpYt791EwhXYMaKBJ+BBMWrGjKEL7AnCRqd1hQRBOpF4
 feNg==
X-Gm-Message-State: APjAAAWOUualgBhDrcMz036Mcw7+M4WztgK9OKCVa8R1nFQY+BqJrpoU
 SE7fvocndPzmp02R2RCe+KK24Q==
X-Google-Smtp-Source: APXvYqzY6lLiNfLcAT2CBNRvssxZ7MTePv1pHo5Z9zzhPNEs2I5saW4nMcezRwTRhfTnTCpuHM6CLA==
X-Received: by 2002:aa7:95a9:: with SMTP id a9mr12656949pfk.15.1576195681400; 
 Thu, 12 Dec 2019 16:08:01 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id j38sm8317647pgj.27.2019.12.12.16.07.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 16:08:00 -0800 (PST)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 16/58] tty/serial: Migrate efm32-uart to use has_sysrq
Date: Fri, 13 Dec 2019 00:06:15 +0000
Message-Id: <20191213000657.931618-17-dima@arista.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191213000657.931618-1-dima@arista.com>
References: <20191213000657.931618-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_160802_175148_C22F0162 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vasiliy Khoruzhick <vasilykh@arista.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Dmitry Safonov <dima@arista.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Dmitry Safonov <0x7f454c46@gmail.com>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIFNVUFBPUlRfU1lTUlEgaWZkZWZmZXJ5IGlzIG5vdCBuaWNlIGFzOgotIE1heSBjcmVhdGUg
bWlzdW5kZXJzdGFuZGluZyBhYm91dCBzaXplb2Yoc3RydWN0IHVhcnRfcG9ydCkgYmV0d2Vlbgog
IGRpZmZlcmVudCBvYmplY3RzCi0gUHJldmVudHMgbW92aW5nIGZ1bmN0aW9ucyBmcm9tIHNlcmlh
bF9jb3JlLmgKLSBSZWR1Y2VzIHJlYWRhYmlsaXR5ICh3ZWxsLCBpdCdzIGlmZGVmZmVyeSAtIGl0
J3MgaGFyZCB0byBmb2xsb3cpCgpJbiBvcmRlciB0byByZW1vdmUgU1VQUE9SVF9TWVNSUSwgaGFz
X3N5c3JxIHZhcmlhYmxlIGhhcyBiZWVuIGFkZGVkLgpJbml0aWFsaXNlIGl0IGluIGRyaXZlcidz
IHByb2JlIGFuZCByZW1vdmUgaWZkZWZmZXJ5LgoKQ2M6ICJVd2UgS2xlaW5lLUvDtm5pZyIgPHUu
a2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KQ2M6IFBlbmd1dHJvbml4IEtlcm5lbCBUZWFt
IDxrZXJuZWxAcGVuZ3V0cm9uaXguZGU+CkNjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKU2lnbmVkLW9mZi1ieTogRG1pdHJ5IFNhZm9ub3YgPGRpbWFAYXJpc3RhLmNvbT4K
LS0tCiBkcml2ZXJzL3R0eS9zZXJpYWwvZWZtMzItdWFydC5jIHwgNSArLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvdHR5L3NlcmlhbC9lZm0zMi11YXJ0LmMgYi9kcml2ZXJzL3R0eS9zZXJpYWwvZWZtMzItdWFy
dC5jCmluZGV4IGQ2YjVlNTQ2Mzc0Ni4uMmFjODcxMjhkN2ZkIDEwMDY0NAotLS0gYS9kcml2ZXJz
L3R0eS9zZXJpYWwvZWZtMzItdWFydC5jCisrKyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9lZm0zMi11
YXJ0LmMKQEAgLTEsOCArMSw0IEBACiAvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIu
MAotI2lmIGRlZmluZWQoQ09ORklHX1NFUklBTF9FRk0zMl9VQVJUX0NPTlNPTEUpICYmIGRlZmlu
ZWQoQ09ORklHX01BR0lDX1NZU1JRKQotI2RlZmluZSBTVVBQT1JUX1NZU1JRCi0jZW5kaWYKLQog
I2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPgogI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgogI2lu
Y2x1ZGUgPGxpbnV4L2lvLmg+CkBAIC03NDgsNiArNzQ0LDcgQEAgc3RhdGljIGludCBlZm0zMl91
YXJ0X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJZWZtX3BvcnQtPnBvcnQu
dHlwZSA9IFBPUlRfRUZNVUFSVDsKIAllZm1fcG9ydC0+cG9ydC5pb3R5cGUgPSBVUElPX01FTTMy
OwogCWVmbV9wb3J0LT5wb3J0LmZpZm9zaXplID0gMjsKKwllZm1fcG9ydC0+cG9ydC5oYXNfc3lz
cnEgPSBJU19FTkFCTEVEKENPTkZJR19TRVJJQUxfRUZNMzJfVUFSVF9DT05TT0xFKTsKIAllZm1f
cG9ydC0+cG9ydC5vcHMgPSAmZWZtMzJfdWFydF9wb3BzOwogCWVmbV9wb3J0LT5wb3J0LmZsYWdz
ID0gVVBGX0JPT1RfQVVUT0NPTkY7CiAKLS0gCjIuMjQuMAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
