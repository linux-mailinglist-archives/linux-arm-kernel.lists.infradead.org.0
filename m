Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A0D70261
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 16:31:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:MIME-Version:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9sfih/E8arrZnVj6Svmo/Hf0JC9mreWPnI2VRXQGxKg=; b=SQ6n2zsekJnegGLHt3oVXlVYrG
	kjydUgxsk2GL3c5tHYWi8Hi2+c6JMpuf/earVlyF0I64EfoPQSlNJ7vtuh4ZCV/GDsvPAnTO/Tl0k
	xrDgy1hpYn1pRZKxbULsyaRyQ9fXC6Vg4Y37+sNTTgH4lJ+xVAsvr9eC6aBjDT/4x+eobodHk6Dg3
	rnkfrDOmQiz2W4oQap2BQ6bYwZECG4/9qEZh13lL6kxqjjTYdBflngGoqu1U0qhtPEx7GI2CgrBfV
	qM45HIzJIlUW7ZbhyJWMwB4oQOf2XInErOYFrA3wIdCMOdJxP/mszahEGNYIl+BL2+1ANk8wNYrK+
	QLzeoGmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZLw-0001fb-3U; Mon, 22 Jul 2019 14:31:48 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZLh-0001eo-Vo; Mon, 22 Jul 2019 14:31:35 +0000
Received: by mail-wm1-x343.google.com with SMTP id g67so31455269wme.1;
 Mon, 22 Jul 2019 07:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:user-agent
 :content-transfer-encoding;
 bh=NSmLZi5lG6CsQjeIDxBEpIDrtPjhGys1X42LIYXPceE=;
 b=m+ZvukdfNBnfE71+9LxhZld0M5udugwH6mQsenVkkY/aoIRKNPmtCPwlkpLCpPU6gX
 WnC1GzVa3M+0blnODMXb+Jm3BSMCPPFotk5/PBGwjoAZJfYGCvgV3A5LQCR34usSji5S
 zWfXHKkwHxwJdYl+UK05R88xJjiV5mlb9114M3uzOLDCJ4Z9mF4SEttknbB2zGh6y0SS
 vuooZTbVSK/6tzwQb9RosehV7Ed8I0OWgOJ0Q4SqbbEW7QWqazaLXPmaZek1bgJwNk1R
 Ldr0mwGIQFPl9hp0m7VrOvMiVOaTwHaX9PIARox2tDQsYgyiOsHwr8XJBorpWNNVzqAD
 br4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :user-agent:content-transfer-encoding;
 bh=NSmLZi5lG6CsQjeIDxBEpIDrtPjhGys1X42LIYXPceE=;
 b=YRQnTkzgzy04zSEwzylg03BH7dWISAdMqqy62Md+nolBNUjSBXH9FNwYyy6LucONHE
 KcyeinHoDfdKIkroc0DjlwhwJkW5SIp6r/w3qSFtchrsiu45i4Fn4HgaIZyaHQWOGd/F
 SJEcFfkjzx6Shorzda9nW+5WrfZBQNLNeChfTLL4SryZmRonyKcFeaeX3+pLA+THJxjI
 3VRd1Hwe7wKr2N02dlHPeXZL99k7JAKd9MVLaa8CTbOHxRZq/VqUMOPn7F56KyIl3CZc
 sReL45ZIFLdmXyXA3Vekc9hqFNEYuZh6Y0HYDosJFeZ6T+McCl3DI88w8sBv7Ua7Iu9u
 XtLA==
X-Gm-Message-State: APjAAAU2/WjjQTh2yuG24accs/ZBSbiKRMmY9kG6NnXV6W3nHtMUhVAx
 TxToRpdZLwsyThE6tRiFIAo7sNHGHa4=
X-Google-Smtp-Source: APXvYqx/g6lDROMuc0NLOwaIDLXOVh57JABgY8fj2C3/AFxOOfZ/3B+Vru+dfU3AjxpLrCzPc0zctA==
X-Received: by 2002:a7b:c455:: with SMTP id l21mr65124779wmi.114.1563805889294; 
 Mon, 22 Jul 2019 07:31:29 -0700 (PDT)
Received: from localhost ([92.59.185.54])
 by smtp.gmail.com with ESMTPSA id 91sm84465351wrp.3.2019.07.22.07.31.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 07:31:28 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: <linux-arm-kernel@lists.infradead.org>
Subject: kexec on rk3399
Date: Mon, 22 Jul 2019 16:31:27 +0200
MIME-Version: 1.0
Message-ID: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_073134_046466_871C65C6 
X-CRM114-Status: UNSURE (   6.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIGkgaGF2ZSBiZWVuIHJ1bm5pbmcgbGludXggb24gcmszMzk5IGJvb3RlZCB3aXRoIGtleGVj
IGZpbmUgdW50aWwgNS4yCkZyb20gNS4yIG9ud2FyZHMsIHRoZXJlIGFyZSBtZW1vcnkgY29ycnVw
dGlvbiBpc3N1ZXMgYXMgcmVwb3J0ZWQgaGVyZToKaHR0cDovL2xrbWwuaXUuZWR1L2h5cGVybWFp
bC9saW51eC9rZXJuZWwvMTkwNi4yLzA3MjExLmh0bWwKa2V4ZWMgaGFzIGJlZW4gaWRlbnRpZmll
ZCBhcyB0aGUgcHJpbmNpcGFsIHJlYXNvbiBmb3IgdGhlIGlzc3Vlcy4KCkl0IHR1cm5zIG91dCB0
aGF0IGtleGVjIGhhcyBuZXZlciB3b3JrZWQgcmVsaWFibHkgb24gdGhpcyBwbGF0Zm9ybSwKaSB3
YXMganVzdCBsdWNreSB1bnRpbCByZWNlbnRseS4KClBsZWFzZSwgY2FuIHlvdSBwcm92aWRlIHNv
bWUgZGlyZWN0aW9ucyBvbiBob3cgdG8gZGVidWcgdGhlIGlzc3VlPwoKVGhlIGxhdGVzdCB0ZXN0
IHBlcmZvcm1lZCBpczoKIDEuLSBCb290IHY1LjMtcmMxCiAyLi0gS2V4ZWMgaW50byB2NS4yLjIK
IDMuLSBUaGUga2VybmVsIHJlcG9ydHMgbm90aGluZyAoZWFybHljb24gbm90IGVuYWJsZWQpIGFu
ZCBkb2VzIG5vdCBib290LgpUaGUgc2FtZSBrZXJuZWwgdjUuMi4yIHdvcmtzIGZpbmUgd2hlbiBi
b290ZWQgd2l0aG91dCBrZXhlYy4KClJlZ2FyZHMsCiAgVmljZW7Dpy4KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
