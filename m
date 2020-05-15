Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DF01D4BF9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:00:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4xDsIrjwxcmnx1A9cu8nN5Jz/4TokG8foLS6+o7yeo4=; b=iEmwG81xEtgCjX
	RAwmqBOfOepyUW10QcrV/zgSHCVMuvEoFKcAolCsz33QHnWEpKx5vnczz76tMMys7OTAqzIEdL4uO
	NRdMSpuN9zspfM3rZMh8FkIWjVSfeNqBpDmNxQAxb02h96b5TOV8Ve2zxR8QYS8MvP/1B8hJzU+Qh
	A7zUhMiObRYSz3KyPbbqvfJRIEFTlkC72nZPwHtbH9ndvQvzpyMmhkhzo+DQEE5MXJdefT53xf64I
	CYXiUUOfK9ZvIgHqDD45CsQAOt4P7R1NqbPNM4VRGCqCoa9bHz3mtfWKqJm5gmEcUdf2fObRTjIme
	j9/Rkdjuz7XWTfzPC3bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZY4u-0002X6-7R; Fri, 15 May 2020 11:00:32 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZY3Q-0001hc-7V
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:59:02 +0000
Received: by mail-wm1-x343.google.com with SMTP id k12so1866561wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 03:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n0WmKLG9AhFHe1sx7/xWBbs910NkW2ou4PIf9/zvdZk=;
 b=XH/o0H7oM78CWsMava6ImC+pDI6hF6ua9+7a+QgMxesqt0yvnk3qtmKK2Kdbnpgwn5
 syN/+CbKjm6nWhTD4kIjUoLCKKDl0DlXsbkO5IvT0Ng63b17fu0k70ArZyIFneeBaLRz
 raNSACI6WrwfkYHp+NLgayYvdjKyhhOPIG/9EnB9PD4u3xxQQz7jOb2yARtaUaugtPMx
 f2om0EoHE2cV01n/1IlqoPq1I3NpnCfjdh4Irg94n2vsLyaQthwX7TH58GQap8aIibHq
 HX/YAdJj4EJ54cR/YtNxaqTu/khLe/vqabq3I08duZ21GmKhMeAnn0qbb3oOZpPG1tZJ
 FCcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n0WmKLG9AhFHe1sx7/xWBbs910NkW2ou4PIf9/zvdZk=;
 b=jhpqWBq/jO6EVeaaFMK4Bl8+09LXrYqJnIbDCSQ83dboAnHhDOatNH4bU0QoJzWT4e
 UAB4BzEQtHLk8FGLVwTkV6PXjD+Ji58nRoTyA3Unjav4Nm4VlywebMSEpNE2YIgfufw3
 LJ18z/3WHY+nOmPv3+X5qVhfQZlLWzTaHsFutsYbJROZf+TdQj4HlM8x3UbNFzuMGkm1
 ZBB/5eMfk6G7hcALVKorM1oEYq02L6ddNPh8gQrNYGvfQUd1KShpSpMZFnjeE7xqFo9P
 AsiXjp4OFLwrn7dcI5CgPed1A1mVns0cbq1fh0TKfkNzMLXh9fPvfHbJ8aAIPO4dMiua
 o77Q==
X-Gm-Message-State: AOAM530BwmYjUrTDnLGAL2U/uPi78xZiVROMO8lOJdFOShcTdCskYCTh
 EheqLTJRFBds2nsSFgs497BbXg==
X-Google-Smtp-Source: ABdhPJyFi+//KaD2VusD1LXgNbdSGbxHqdar1dGWec/TaEPF0FrbkPG38tGqXW8/K5EnBa5mk9BeqA==
X-Received: by 2002:a7b:ca53:: with SMTP id m19mr3574570wml.182.1589540335813; 
 Fri, 15 May 2020 03:58:55 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:d11b:f847:8002:7411])
 by smtp.gmail.com with ESMTPSA id x184sm3090403wmg.38.2020.05.15.03.58.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 May 2020 03:58:55 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Will Deacon <will@kernel.org>
Subject: [PATCH v2 01/14] arm64: kvm: Fix symbol dependency in
 __hyp_call_panic_nvhe
Date: Fri, 15 May 2020 11:58:28 +0100
Message-Id: <20200515105841.73532-2-dbrazdil@google.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200515105841.73532-1-dbrazdil@google.com>
References: <20200515105841.73532-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_035900_452081_34FD98A3 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: David Brazdil <dbrazdil@google.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

__hyp_call_panic_nvhe contains inline assembly which did not declare
its dependency on the __hyp_panic_string symbol.

The static-declared string has previously been kept alive because of a use in
__hyp_call_panic_vhe. Fix this in preparation for separating the source files
between VHE and nVHE when the two users land in two different compilation
units. The static variable otherwise gets dropped when compiling the nVHE
source file, causing an undefined symbol linker error later.

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/kvm/hyp/switch.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 8a1e81a400e0..7a7c08029d81 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -836,7 +836,7 @@ static void __hyp_text __hyp_call_panic_nvhe(u64 spsr, u64 elr, u64 par,
 	 * making sure it is a kernel address and not a PC-relative
 	 * reference.
 	 */
-	asm volatile("ldr %0, =__hyp_panic_string" : "=r" (str_va));
+	asm volatile("ldr %0, =%1" : "=r" (str_va) : "S" (__hyp_panic_string));
 
 	__hyp_do_panic(str_va,
 		       spsr, elr,
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
