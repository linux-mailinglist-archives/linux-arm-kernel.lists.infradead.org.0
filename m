Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 502D4112F6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 17:03:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OEQGEGdQNsDktYgGs4d7mgUSjjiikhOlEaERCkmoQtg=; b=M57DekpTdxAv3P
	46KCv4KVqqT8jRJyynCBkZbqWdlRThKuIl+DT+hqM9aDL7rVEOjYK3kZrF4Xdb84IFrR7lDHTWlD/
	y2LyQ+D54CSYbu96rSzRJx/1axTddvOeU4v8t16rwcFf7VQ2y9jhUlz9QlCCgas1KDOHlvOFtdyrG
	Gh7wKqfzgdlPJcREp5FatD9nXbg95jw04XRBWUv4VQNTvpGReJldCvqIxhghmIbSOg82P1qTLa2Xv
	9Rt9NoOB3plhBhiT2CuV+kqejhcbK6FSHgMGkSKTYPfXB04zZ1rHGQIuAhmeH825WGZeTTDgpU2m/
	0E7gyQxA9ZvjvXBEAY7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icX7A-0002jo-Hi; Wed, 04 Dec 2019 16:02:56 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX4D-0007JN-Rb
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 15:59:58 +0000
Received: by mail-qt1-x841.google.com with SMTP id k11so244989qtm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 07:59:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=mrHgWWXHUWXBn03njwP1uC49SHZHRCptq6VAl454YEg=;
 b=OCE7EeNTEySaYudN4WgDJVntl4hVVBO7kvt/qF2UoQCwbINGo+Mf5j0z+FJXLkjS5i
 YKQ3ii7bigLttEUa4f3W2IFSMCn8uqQ5/X1ODXUaH2XygO5L+lvs0BqWaq0OiftYXt+Z
 5eIxrfDN5lOpZt3j1qm1EZ0QHqEAFtH96JK+4Aroi69TMwsapzZ++1Sy1HTGY/4XynNB
 1ALtddFyBSWXeHLkNkAvaMhtZD43k0IEOT7PZIPGe/C2F/QDkuxpJhoaJZoBhPgrCAc9
 eHNfkpunSUY3VfO/lAmmh3ptTexrSfpOjgr0avhEga6w5lkHNBeCWeROXyGfCpp2Pkz2
 AE/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mrHgWWXHUWXBn03njwP1uC49SHZHRCptq6VAl454YEg=;
 b=l4oacO32GnbY4+tn5m04A2/JbnzSYcCH6LBQOMyKfAV2297WDLCpXwhi/PnCw/gTOl
 6VSM2rc7g6c31AuWP6StaI3hyrmg5xdLf4j5iPKQX14VnbF+BgZXVq805zWUJqY/EhZP
 zB+0djzoBRV/VIlZzf4ozCZ1ejjTf2QtkAPezWN8pRfp4VB+IF46nExbgV4qCPQDYtCf
 hDYp99+6r/bigpiQDc2dekLbIIRrXk1BV0r3Or+kkCWvkBlE4Ab94/BRiVPtkqh+/Zpw
 gvO7TfNptatfT4z1ROmbc+mMKkuVM7qhXTkt6lgLbomuqnLMiXr/J/EWoVsFXjbfetn/
 kl4Q==
X-Gm-Message-State: APjAAAVj5VhF7RRjaf3/UDQwekZlTvypEICEM6YYGAwoYcXuA2apwzG7
 tDCa7xfhIuoefcbI4H1tVF0Z6g==
X-Google-Smtp-Source: APXvYqxHHSk1mtXaYINaTUQhuobJKQpL4nM2E+jFFMZb3TTDjUtboPmbRHiWO39AwzRbeusBuN7zEA==
X-Received: by 2002:ac8:71da:: with SMTP id i26mr3321440qtp.271.1575475188330; 
 Wed, 04 Dec 2019 07:59:48 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.07.59.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 07:59:47 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 05/25] arm64: hibernate: pass the allocated pgdp to ttbr0
Date: Wed,  4 Dec 2019 10:59:18 -0500
Message-Id: <20191204155938.2279686-6-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_075953_949454_1528EF24 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ttbr0 should be set to the beginning of pgdp, however, currently
in create_safe_exec_page it is set to pgdp after pgd_offset_raw(),
which works by accident.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/hibernate.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index a96b2921d22c..ef46ce66d7e8 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -269,7 +269,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	 */
 	cpu_set_reserved_ttbr0();
 	local_flush_tlb_all();
-	write_sysreg(phys_to_ttbr(virt_to_phys(pgdp)), ttbr0_el1);
+	write_sysreg(phys_to_ttbr(virt_to_phys(trans_pgd)), ttbr0_el1);
 	isb();
 
 	*phys_dst_addr = virt_to_phys((void *)dst);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
