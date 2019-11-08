Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DA4F3FBC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 06:21:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vYxiMu7X5ITNk12qdz3ZCxK/hmJ4ItfJhXP5OY5OBJI=; b=Stqz00m4lcY9vQ
	/k+U/QhzO5tMoPiUIce/RFSjUMbu5O3p1R3FWqRl6gO/5D+vwbEYu+HUQg1fnEau4325hYOZYlYL0
	hXU1eklblO44UbAYiOMCXK278RLwsJUtntWw6MJwWsTaqaGgRZODpKFoJ8DoFy9h0G1JgdcAVuYww
	SsUQGcbX4HgNSLNudiTr2vuzwT/08r+sbLcFJ6qV/Cy3G6wNQksUTq8TH2DFHeDT+mK3OvkxcDJaJ
	6mLZO2EpxWUOpJX5xWf8gEeC5LrgnCZYnwjBag1glk95DWFEJ9at6apl27QvnSIOFJ/rG4UMaWP57
	qHe3CMMJh+ta7cdoVGRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwi2-0003yI-Iv; Fri, 08 Nov 2019 05:21:22 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwh4-00038I-0f
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 05:20:23 +0000
Received: by mail-pf1-x432.google.com with SMTP id c13so3883097pfp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 21:20:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TKTqUgLFNP8L+2pgyNr2mJwmi4tnNe/kzgV9Is+uXFk=;
 b=eLIcO37Rqryh80j1DWgiUO1Z8jSmPor+2XHv08XtdnCM3k7+Mcg5f/LNldagbqiqHA
 lAQrJ8fsazAYpu3uBzcNicGzxRD+X3JGypwI4L6/qnuRmZJI9LIiX5qOeFuvSnKk6Hpx
 iYNWiZaXn58tZQyPJEGwdF4bMZ2g1D8Cia0GdPkjqDqYaNOmp/fjjeUXFKLribS24uNA
 xC+XRLbJ/v9K2UUqRjdrAWVzJX5iQwWQrb1hoUOnosN5JuYSSB6Y2+wYwdgUiAie1T/6
 nC5Yl+TZI0Nn38EVyYznPckjSaE0E48i5ffXeAGX9EojZowiiBUieDcGDyGO3sdryFFx
 M8sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=TKTqUgLFNP8L+2pgyNr2mJwmi4tnNe/kzgV9Is+uXFk=;
 b=YjWCbQbRD1Grvi824DrvoNrqL4e+oZc/4UJIzoXnWyG7XbapwwQGhVT4Eej50oK9Ku
 kifWeCbxbIWClX+MfwhxrkI1CdeHQ3dmR7B+YpZk78KHjlQwoCZujFpT0I51D/kh4elX
 UQJCBYjOVVcrLazO6wt1sOpkngBYUS9IRYPVQE1wecvlreYaH7aQPBmZaLPpD0g/I1+T
 2phqA+kgYGqnRYI0cWfG0eQNr5zrmYBRbWOqxI2i43L/AVFT5fd3E9N4SM95RgRtv103
 shekQ0wx38g75YNRik/8H3ZaiY0zBZSqUexI1C5dCO+faB545nyquDL42ejGkb1MPhz8
 q7og==
X-Gm-Message-State: APjAAAVZjIwalqack//atkg6f7AxbW49SiKy8Dc/BqqyN5ycA8SwA3Ij
 XMn4QffkFS+ljqVjvtZEKiM=
X-Google-Smtp-Source: APXvYqzPNTY5lPCqO6tSNj4msuCp/WP/zKPnz+eK+7wPx5hWkEwRs4tQCrIf/zQmmVh8eefJ5bMtGQ==
X-Received: by 2002:a63:dd51:: with SMTP id g17mr9325707pgj.388.1573190420080; 
 Thu, 07 Nov 2019 21:20:20 -0800 (PST)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id v19sm3798443pjr.14.2019.11.07.21.20.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 21:20:19 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Jeremy Kerr <jk@ozlabs.org>
Subject: [PATCH v2 04/11] trace: fsi: Print transfer size unsigned
Date: Fri,  8 Nov 2019 15:49:38 +1030
Message-Id: <20191108051945.7109-5-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191108051945.7109-1-joel@jms.id.au>
References: <20191108051945.7109-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_212022_086342_2A9795B7 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Andrew Jeffery <andrew@aj.id.au>,
 Alistar Popple <alistair@popple.id.au>, Eddie James <eajames@linux.ibm.com>,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 linux-fsi@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Jeffery <andrew@aj.id.au>

Due to other bugs I observed a spurious -1 transfer size.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 include/trace/events/fsi.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/trace/events/fsi.h b/include/trace/events/fsi.h
index 92e5e89e52ed..9832cb8e0eb0 100644
--- a/include/trace/events/fsi.h
+++ b/include/trace/events/fsi.h
@@ -26,7 +26,7 @@ TRACE_EVENT(fsi_master_read,
 		__entry->addr = addr;
 		__entry->size = size;
 	),
-	TP_printk("fsi%d:%02d:%02d %08x[%zd]",
+	TP_printk("fsi%d:%02d:%02d %08x[%zu]",
 		__entry->master_idx,
 		__entry->link,
 		__entry->id,
@@ -56,7 +56,7 @@ TRACE_EVENT(fsi_master_write,
 		__entry->data = 0;
 		memcpy(&__entry->data, data, size);
 	),
-	TP_printk("fsi%d:%02d:%02d %08x[%zd] <= {%*ph}",
+	TP_printk("fsi%d:%02d:%02d %08x[%zu] <= {%*ph}",
 		__entry->master_idx,
 		__entry->link,
 		__entry->id,
@@ -93,7 +93,7 @@ TRACE_EVENT(fsi_master_rw_result,
 		if (__entry->write || !__entry->ret)
 			memcpy(&__entry->data, data, size);
 	),
-	TP_printk("fsi%d:%02d:%02d %08x[%zd] %s {%*ph} ret %d",
+	TP_printk("fsi%d:%02d:%02d %08x[%zu] %s {%*ph} ret %d",
 		__entry->master_idx,
 		__entry->link,
 		__entry->id,
-- 
2.24.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
