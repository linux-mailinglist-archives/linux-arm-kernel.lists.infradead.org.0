Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBCE10CF3C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 21:27:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8riVko8HPB2ImxftN4P0sGqyQe28Ezh+jDJ5hvXNDK4=; b=qw2V03wss5Mweus/fNFAKdg6xw
	jd5DR9FPUrSt/7zplqujvHCjJe6s1NoanO7PP7L4P5JR21K9cRi8Tn7aauJAPH8mUthMnHCeN6xzN
	kS1iWtk7oyO3cVWxkkkwNjX+kS1AzqJtCelcgnPiclCQ1VSJXdMT9jfUORlwNiF+cjyM7wKOnT1FR
	v8t7Tyuozs+YQEHgxzmzrivIp/VSvcr5yPgCKcotIQvr6kjSgL6qFmT1jGta4bXgHIjZm8yvsCObF
	pDHGPnC/R74j9zrvoI+sr+k/d7ZqCYS57VVH7gbyKcFqSqgr25ent6g5F8JLEcXwBLwfE+dz1w0+v
	5lsFdHGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaQNV-00088X-7T; Thu, 28 Nov 2019 20:27:05 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaQMD-0007Jz-Es
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 20:25:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574972743;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=41xNMejmkDpiENDKO7RxAxz9cPSeln8z2A1ifqUYAvQ=;
 b=XCaVDvtTGiCvnPXWT2UArwCUG5gfP7YNdiRewsTFOqHwObREjvf3u7dvEMxg+gf/79JdLx
 43rqrYbO7ObyYzdQdTsD13S2NMd9OfLxOlrxzI5Bk7A3jfLW9IhhM39FMFe7hQTIOMeC33
 XuaFq+TTYP3+aVLIsWeW5qZIbVLr7Vo=
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com
 [209.85.210.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-367-Wasvybk8Nm68GUtuL8p3IA-1; Thu, 28 Nov 2019 15:25:42 -0500
Received: by mail-pf1-f200.google.com with SMTP id h2so16701926pfr.20
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 12:25:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TnU1CF4ydXp0Re/7xQPqByhi17OoIqWu96aUm7ilAL8=;
 b=dvWgE+fFGK3muounHgbovE2BNSdIW+WJ2P6tPu/iurvJbDCupvhZthIldwQ1CTYeA8
 CIXtSAhHxZk8GgIRmJlw7xulScdcblC8W3XPhjHM8mV8BQYm5X02CNlP9V0GW6QAz1w2
 1tJqcd+twG3/ROKLbmyHjo8yRWiFc1L7yK71jXRpaK7ENt1+AwRwLcVUg0WRwyxy7EYu
 0+OsONoF/d3kSk7Q37vXUCcyKgqQ0OpuCLB8NzzAzIGq+lWBCj9TraAJjpKlQ3Mu+D+9
 pxUTSBOcGybFWJCUhw2ukcHgiKYOU6QaWMPmbxL/TKbjqFBr0C/EOGJDIwpSz3hbat+3
 lP0Q==
X-Gm-Message-State: APjAAAXTzpDYoI84goc2OexJHFYbJl/2GM9YOMHZBurh9javTKBT/Tf0
 KqPXD8iKQXJqmgSWWSHA5gtVQC7hNJ2crjPoNYYBjoOZMsSKVXylXFuRyUCZfWofVKjgTnRsfcF
 B5sM9DleZh81GzFVFN/Mvgni5wqeJ/bAyg1o=
X-Received: by 2002:a17:90a:3463:: with SMTP id
 o90mr14440647pjb.4.1574972741096; 
 Thu, 28 Nov 2019 12:25:41 -0800 (PST)
X-Google-Smtp-Source: APXvYqw1994kyjpL8nA7jbNA2MDbvleaYMa6ZgrsQMiMtjPLDmyjZ21lIhTP8RXhXz67xc7yDAqxlg==
X-Received: by 2002:a17:90a:3463:: with SMTP id
 o90mr14440628pjb.4.1574972740900; 
 Thu, 28 Nov 2019 12:25:40 -0800 (PST)
Received: from localhost ([122.177.85.74])
 by smtp.gmail.com with ESMTPSA id c184sm22569924pfc.159.2019.11.28.12.25.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 28 Nov 2019 12:25:40 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 5/5] Documentation/vmcoreinfo: Add documentation for
 'TCR_EL1.T1SZ'
Date: Fri, 29 Nov 2019 01:55:16 +0530
Message-Id: <1574972716-25858-4-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574972716-25858-1-git-send-email-bhsharma@redhat.com>
References: <1574972716-25858-1-git-send-email-bhsharma@redhat.com>
X-MC-Unique: Wasvybk8Nm68GUtuL8p3IA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_122545_590893_56EDD682 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-doc@vger.kernel.org,
 Will Deacon <will@kernel.org>, bhsharma@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 James Morse <james.morse@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Anderson <anderson@redhat.com>, bhupesh.linux@gmail.com,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Steve Capper <steve.capper@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add documentation for TCR_EL1.T1SZ variable being added to
vmcoreinfo.

It indicates the size offset of the memory region addressed by TTBR1_EL1
and hence can be used for determining the vabits_actual value.

Cc: James Morse <james.morse@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Steve Capper <steve.capper@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Anderson <anderson@redhat.com>
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: kexec@lists.infradead.org
Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 Documentation/admin-guide/kdump/vmcoreinfo.rst | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/admin-guide/kdump/vmcoreinfo.rst b/Documentation/admin-guide/kdump/vmcoreinfo.rst
index 447b64314f56..f9349f9d3345 100644
--- a/Documentation/admin-guide/kdump/vmcoreinfo.rst
+++ b/Documentation/admin-guide/kdump/vmcoreinfo.rst
@@ -398,6 +398,12 @@ KERNELOFFSET
 The kernel randomization offset. Used to compute the page offset. If
 KASLR is disabled, this value is zero.
 
+TCR_EL1.T1SZ
+------------
+
+Indicates the size offset of the memory region addressed by TTBR1_EL1
+and hence can be used for determining the vabits_actual value.
+
 arm
 ===
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
