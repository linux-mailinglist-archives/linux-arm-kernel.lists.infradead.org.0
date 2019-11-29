Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCAE10DA5D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 21:02:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8riVko8HPB2ImxftN4P0sGqyQe28Ezh+jDJ5hvXNDK4=; b=tqDrdCHs2+NPK0z8A0S5Omhdvc
	OH4tYfLrULeNAMKt56QMz5MgoWUR6PeIJMTXeIM76dUYzcOzBDMThR34r8OK550DtCQ1lHbUWld6q
	zC0VQb4yXQWOiZNS3Zpkw19efBHtfKVVNhJqdUJYLFFEEjGSwu4h/pyAkVflnC4NPEUExKE0p2GMI
	9iF8nlQCypCD0uyawSl72FdZEFOx0V8wexzb6eG1hqcqBX0/exTSGSVr0KpR4NX/BBaq41MEqTYVG
	XPRx3I9/dvK8AvBjAs8vrtNTke8piPjQbrXLxKZhCip7EIcXv5ekl76fgSIfHcUnfV7EDUPMeGWmC
	SsvjZduw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iamT1-0001ek-Qr; Fri, 29 Nov 2019 20:02:15 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iamQl-0007Ic-O0
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 19:59:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575057594;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=41xNMejmkDpiENDKO7RxAxz9cPSeln8z2A1ifqUYAvQ=;
 b=TLwAYx7+GwsQy5Nsbfp3upNO524Vr513dsISkCP5sFAIpOjVX3xYGVJx8DlEg3wHBbRJ2i
 VSviOXx2OioZt8KY7Bg/ieyxg82CXLqhHiDzKbZfUJjtegssz7ojtVfCV5yOszy2Rh97/U
 0JRO05Qjbdfvmept4lM37ZvfPvwktHA=
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com
 [209.85.215.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-339-VKG8sCIcO6O1vnDiwqdKUA-1; Fri, 29 Nov 2019 14:59:53 -0500
Received: by mail-pg1-f198.google.com with SMTP id r2so6593539pgl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 11:59:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TnU1CF4ydXp0Re/7xQPqByhi17OoIqWu96aUm7ilAL8=;
 b=UxKb09DFp00gV/npGLl/wwpZgqRjiDbW7JZSZbypuVWDTLYCRCjb+LV7WqVXzOF2Uy
 sC1IwpSy54qZlFNv+NCpJNFkGu6R3GOTmNJIBLBxJ42WmQ1/yaFj24xZbArkZJyW1Lhs
 R3zaL9Mip1Xx14CvWuLQ89wIbN7ymg+gmv4r7C9a1qZPNjpqdf7xinegNVUbZML02np4
 rAUV+UN+YBTNhQBJCf+x0zWOFZ287KJydu2h9bm/0lWwK4b1IvuTHHtH7GybCjZOe+nW
 iYI8586SPNJxBvxJqgwiD2ghJ4y7Wy7fXO0+IFMZew7Xo1NF489uUOtD4potmbA8SO16
 Ju4w==
X-Gm-Message-State: APjAAAWjquXdMjXV9mYjrp4gUNghU1HB3x24Hr4ZpX2aXcR8u0mxRzH+
 +90pd6E/v5bx2jlrNTJ7xpNU3h46KBsjBUqpvHs/axCkQjVkpLYeISVWhwDR6wnyGx2/6VyekbS
 U0qbOAPmyG+prPSllX6Gi4F/Y9Q2yIWR1RsY=
X-Received: by 2002:a17:90a:1a8a:: with SMTP id
 p10mr19841460pjp.6.1575057592018; 
 Fri, 29 Nov 2019 11:59:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqxSY3AQtQ2n98lr5W53/GVJZRJxpVnInAVeYWNmyeuMXseeTDPCBIIN9JR01+Ft/5q0+acg9Q==
X-Received: by 2002:a17:90a:1a8a:: with SMTP id
 p10mr19841443pjp.6.1575057591861; 
 Fri, 29 Nov 2019 11:59:51 -0800 (PST)
Received: from localhost ([122.177.85.74])
 by smtp.gmail.com with ESMTPSA id v10sm23928968pgr.37.2019.11.29.11.59.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 29 Nov 2019 11:59:51 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [RESEND PATCH v5 5/5] Documentation/vmcoreinfo: Add documentation for
 'TCR_EL1.T1SZ'
Date: Sat, 30 Nov 2019 01:29:19 +0530
Message-Id: <1575057559-25496-6-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575057559-25496-1-git-send-email-bhsharma@redhat.com>
References: <1575057559-25496-1-git-send-email-bhsharma@redhat.com>
X-MC-Unique: VKG8sCIcO6O1vnDiwqdKUA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_115955_882508_DAED7CAA 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
