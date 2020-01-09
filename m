Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A02135DD8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:11:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XEqzvQf30r4JARQaXK28iTqGcm4yqGwq3zNfojiER4U=; b=QOvGqpV4ZMBQc8
	3tyVeDH2j/65lLu8dd00WVXfMJvFEV9cIwqg4PxNMnQdZZHhDNgI3BISeObbHpSsobAn7eXgg4cOr
	RNrQyJo5v6BbecqGP/pacLl6LomtcdPrUA0uEEr/0kA3EZBC4fiFLHajnCkARQ2RR/A1DZ3jnKC2F
	T74hFMe4l4EZIk7LC3i6H3tba0Q9ML69amhm19/7gWoIsf0jttaQ8VxXs50/4RMIWgF6VACHq3cXC
	nR6VRz/06LFLmU04rsSQx309W98Mqwjctcl57a6zpjpwUQOG0ReBcsgstoqd7AIZEekc0EkWgUa6h
	X6WBXq3BvHOhHa7mQxtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaPH-0005Pt-Aa; Thu, 09 Jan 2020 16:11:35 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaJv-0007dt-2Q
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:06:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585961;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GmC2xKL3e4Fy+ZDst+0UU0XDQE8Eej6nqhT+4DhHses=;
 b=CLGPBPtk2J6QSwl9lg+p5d37F0TmcAIHaFVhqGFgRTHR7c8Eo6ZzvyXnwAkO/qn0xn8QYg
 0jEtSkvvEm0KcFOPoOY/3MVjY40bOvh4AmPJFAjVt30QWTpq4DLwCZ3yPkTlWjbS/zujjE
 fTyRJqFvRNolJKdNm5Npyh6ZXJOHd2Q=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-102-if02yHJiP_yebAd8U360Og-1; Thu, 09 Jan 2020 11:03:17 -0500
Received: by mail-wm1-f72.google.com with SMTP id w205so1092799wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:03:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+U+nGKdjMx0B4G/fm6acyvjMMXdjwiUkB11cChVUwvw=;
 b=YZdTp+56By7Q4U+zpQrMPNzDvCgrfuMxQQB4Gc2uFrByywV1v7W2+lehj/7p5Uwxcc
 DWP0KwoX0Q0oeoBeQmjAw8LeiCRNVAP3SNOYJC7515G/Vl2P5cCLBIaJWNyfqx7xlZoJ
 i9CH6EfQMGbI/Nfb0lyNBEnfl8oKXewfFy5tbUki6QqWOUpBd1ffZhJ3U3J8cdgY+/D+
 cZG6Sev0UaBYyrzkmjbidCPH1BQ1U2sKkFC+ZbhcYPGanl8rfqIQ8KD2psyzcGbS3nzN
 ktJ2zfjHWqNFRIRH4N8IiwWzr6tOze+4eUyibEmloNu0hVAWVF74pRqccDK1h0HHy3wp
 4toQ==
X-Gm-Message-State: APjAAAVHp1r7lK3kE41qvXJtRCLTH1iF3nXNwLbRJ2fopqSMWiyz/OH4
 pEmh9mCuHG3WDbqNvafIhzejs41mjv9+tPf3oBM8zQowRcMQtHAtj1QVGMR46OI7i93D7ipBYqK
 sBYMPMif1omWflCf1ad6XRbI2nzpKFchodfA=
X-Received: by 2002:adf:ef0b:: with SMTP id e11mr11689563wro.128.1578585796272; 
 Thu, 09 Jan 2020 08:03:16 -0800 (PST)
X-Google-Smtp-Source: APXvYqxcaCDsW9bbAJtdhxvEAdTTp7rkMopW6pzF8N23b9naHbPtWUffbUGHw5DVwkRvjunTIXO26A==
X-Received: by 2002:adf:ef0b:: with SMTP id e11mr11689532wro.128.1578585796043; 
 Thu, 09 Jan 2020 08:03:16 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id z21sm3258969wml.5.2020.01.09.08.03.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:03:15 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 04/57] objtool: check: Ignore empty alternative groups
Date: Thu,  9 Jan 2020 16:02:07 +0000
Message-Id: <20200109160300.26150-5-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: if02yHJiP_yebAd8U360Og-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080603_243981_4BA6FF12 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Julien Thierry <jthierry@redhat.com>, peterz@infradead.org,
 catalin.marinas@arm.com, raphael.gault@arm.com, jpoimboe@redhat.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Atlernative section can contain entries for alternatives with no
instructions. Objtool will currently crash when handling such an entry.

Just skip that entry, but still give a warning to discourage useless
entries.

Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/check.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 5968e6f08891..27e5380e0e0b 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -866,6 +866,13 @@ static int add_special_section_alts(struct objtool_file *file)
 		}
 
 		if (special_alt->group) {
+			if (!special_alt->orig_len) {
+				WARN("empty alternative entry at %s+0x%lx",
+				     orig_insn->sec->name,
+				     orig_insn->offset);
+				continue;
+			}
+
 			ret = handle_group_alt(file, special_alt, orig_insn,
 					       &new_insn);
 			if (ret)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
