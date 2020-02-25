Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4A516BACB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 08:38:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AaUisCfgpDaFDo4WCh1xf/L+w6wV8X+iFuNy5CX1qkQ=; b=aj3
	8CT3TVia4RlJjsA6QZcXzwnLhHX1Kb5XxDegydyOi7tRJ4DkxTbxAolGihFJ1Ak4U5PR4Cdf6+uN0
	QyEJeauIOjXGXOV0zpVjbBDwAjV8AZIA7FQy4mRO34roM1bTcM00OIjLl9T2dmU/RUEFW2N5JOqEw
	L4k0ZIkiCFWfxqCMsqVy4TB+DG1BYtTzDIXWmGz7Vp3lv5hZG3nK+neb+D7WCHxcTTObbmeXybP8J
	4+sHAirFYH00Rd2vxGK2YIC/3QitE+AGHGPyYN8hKfTNHP0uzYS4buKX+WDutE2Kk5yR2+BUxW1rN
	xvryHjo3LgG2FhTgJCA3nsN3rYZXcsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Un2-00007Z-IW; Tue, 25 Feb 2020 07:38:00 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Umj-00006A-8t
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 07:37:42 +0000
Received: by mail-pj1-x1044.google.com with SMTP id dw13so876956pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 23:37:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=lIxGPgoTK3aJQJLA5pnDmNIdVeln7jtxgkVrg2vFgh0=;
 b=gM6uBKhO2Vo923sJ6TwGOJPnjLGhvZUvAjqh3qVP66woh1w+O6Ncxx/F77fmblUIw7
 a5b/5lvwlu9456yQBBktiRLpoGTG8bj6zqskfQExhACrDS+8g8Inb3i77BEl0V5GF7sq
 5KjjmSvO3R+PMpC4LW7X0SLApXxORAUP47mcZE/fGqeeEtCc9Axwjq7C1GqqARZgS4lK
 M0vMgtwh47Ss6drVJlwzfgoaqRjShywDKE9erLxGilTHOd83zTPv6Iq/6sPf4th/6t0k
 ILoWvCLZV3U+Ff6snNv6a3gVUcY2oQoRJG6hGJ2B7gbTTuE8blwy7JVa6Jxa/r4Vgson
 GXGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=lIxGPgoTK3aJQJLA5pnDmNIdVeln7jtxgkVrg2vFgh0=;
 b=ib7Xf/R79pI3ha56BVqbLTlqqJA1BVUVgSoSftc/k3UmV5vOeITVhYU4MsweF3og4m
 6rMRfjRp2bpiCiX6Unpi81PuQNQBA+1vkuozhOlish9K8OIiFhdUmwOIKRxnv3H5Vwu5
 JzNai0oBDagQ0fenCGmz6cjWCKQpN0t8en+Gtlhuf2dqmFktzIzwr01qg/FkRlQLCoGq
 vIqNx3EtqHZEupBEhXYPx+utEYg84WuUaIiGbb2PXGh/NiO+YZTRyL9+XkYNkeeS/dEC
 CKKqP2a8dxVZ6oV0ekuQXNqqZhsgBPABJFtP4a9iqCu0rANl7ypTZa20oJwNl7QyaIrl
 CMlA==
X-Gm-Message-State: APjAAAWO1pmwh202tWSxskH6Y8tknjE3qc10+s9+cnEta2eqeBoNTrRI
 X807UuyAXdyclzgh5lt8vSw=
X-Google-Smtp-Source: APXvYqy8qXgI+AZB+dK+FooUA6k5KupvgH/ZlMIeqENAlrF6NuJDjGZsjZxrGnTGWGT6YH7MIKt1zQ==
X-Received: by 2002:a17:902:121:: with SMTP id 30mr51052157plb.4.1582616259822; 
 Mon, 24 Feb 2020 23:37:39 -0800 (PST)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id m128sm15979390pfm.183.2020.02.24.23.37.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 23:37:39 -0800 (PST)
From: Andrei Vagin <avagin@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: [PATCH v2 0/6] arm64: add the time namespace support
Date: Mon, 24 Feb 2020 23:37:25 -0800
Message-Id: <20200225073731.465270-1-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_233741_313770_813708EF 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Thomas Gleixner <tglx@linutronix.de>, Andrei Vagin <avagin@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Dmitry Safonov <dima@arista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allocate the time namespace page among VVAR pages and add the logic
to handle faults on VVAR properly.

If a task belongs to a time namespace then the VVAR page which contains
the system wide VDSO data is replaced with a namespace specific page
which has the same layout as the VVAR page. That page has vdso_data->seq
set to 1 to enforce the slow path and vdso_data->clock_mode set to
VCLOCK_TIMENS to enforce the time namespace handling path.

The extra check in the case that vdso_data->seq is odd, e.g. a concurrent
update of the VDSO data is in progress, is not really affecting regular
tasks which are not part of a time namespace as the task is spin waiting
for the update to finish and vdso_data->seq to become even again.

If a time namespace task hits that code path, it invokes the corresponding
time getter function which retrieves the real VVAR page, reads host time
and then adds the offset for the requested clock which is stored in the
special VVAR page.

v2: Code cleanups suggested by Vincenzo.

Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Dmitry Safonov <dima@arista.com>

Andrei Vagin (6):
  arm64/vdso: use the fault callback to map vvar pages
  arm64/vdso: Zap vvar pages when switching to a time namespace
  arm64/vdso: Add time napespace page
  arm64/vdso: Handle faults on timens page
  arm64/vdso: Restrict splitting VVAR VMA
  arm64: enable time namespace support

 arch/arm64/Kconfig                            |   1 +
 .../include/asm/vdso/compat_gettimeofday.h    |  11 ++
 arch/arm64/include/asm/vdso/gettimeofday.h    |   8 ++
 arch/arm64/kernel/vdso.c                      | 134 ++++++++++++++++--
 arch/arm64/kernel/vdso/vdso.lds.S             |   3 +-
 arch/arm64/kernel/vdso32/vdso.lds.S           |   3 +-
 include/vdso/datapage.h                       |   1 +
 7 files changed, 147 insertions(+), 14 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
