Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F0B70DBF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 01:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HwoXVKQrmPqm44+UmGCSQQWdBSw/qQJPmgIB/hezAF0=; b=U9+AdoUUw9sOk9
	MkkFHHYmJa6//7CH9Z2t6cak/FtgRwtaHzds7ssFKALNFJhs3r2hUXLVDYcEloQoyce5usrKPuHQ6
	BuzErnGQKVNO/RFj4J597p2WE/qQghRPNib9U+OxxVdbBjdCNlfGXi60I+4uPZGeQR5Hw+2cP9dRC
	k0MKCCuG6yAvA8j9eJuHqegmIS97gyxXKFYH5YNSjnXYADrEbyvD+WNxf/QK24wmIeFnnjLKOBLJG
	0u9+pNFRlC4H4ZnKK/e+YHand6eKdoulkGVXmgCIwmRlFZxV56d9OGia2qQSv5NvYehVTNl21xiw8
	atDkIWi79Svn5fn7zAWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpi9Z-0008NR-5o; Mon, 22 Jul 2019 23:55:37 +0000
Received: from mail-io1-f44.google.com ([209.85.166.44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpi9A-0008Mj-8s
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 23:55:13 +0000
Received: by mail-io1-f44.google.com with SMTP id m24so77972173ioo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 16:55:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hHBF57axMXQUEa4SHufMtNzfbrwQaVINbpKbsLl44HA=;
 b=Y6z+7WMesqf+AWV3RbuqqRXyEMM5ppS+Cd9Qzb95GBHtmkghIZmv5iScHJdhkbJbzu
 q1E8qwTBPRkJNeh+hsgiSaH2+EF0mZEQ64aULdZCUBEqc92kQukBl+ESZ/GbHceeFh0R
 fFIqGnzXNY3KxrGZJH+2Cy+6XutKmrXeC8lQUF6M3fiAPWjzCA7F40j+YEkHwyzVo49V
 5gljxKAAuGAeVtXv8MeQq0/G0Oa5tyOsfm086G3i6tyQs930J1l/iPjKkf5yI4Txn+06
 FdM1CXAo9Qg+C+Hq48IV5k2ViNj5qZBJNk4aVL9MAbTnXVuSOe5XtYPDmlOBNZNeMDAa
 5aVA==
X-Gm-Message-State: APjAAAXUwxk2wL8GnoPkt3HyjBQVMMDkfij5fo2SXDJP9oG0tP8gJ8mr
 DEpdw5LC0oxVtAMIOH510w==
X-Google-Smtp-Source: APXvYqwuLLMIzUHQhT0Ztg4cPxiQhIaJPv4puG6SSu2cVv7POWyU8W3h/O93S9qQuP2ylMDkzQu/aw==
X-Received: by 2002:a5d:8049:: with SMTP id b9mr69933934ior.199.1563839711167; 
 Mon, 22 Jul 2019 16:55:11 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id p3sm35496757iog.70.2019.07.22.16.55.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 16:55:10 -0700 (PDT)
Date: Mon, 22 Jul 2019 17:55:09 -0600
From: Rob Herring <robh@kernel.org>
To: fugang.duan@nxp.com
Subject: Re: [PATCH RESEND 1/1] dt-bindings: serial: lpuart: add the clock
 requirement for imx8qxp
Message-ID: <20190722235509.GA1256@bogus>
References: <20190704134355.2402-1-fugang.duan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704134355.2402-1-fugang.duan@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_165512_313425_3E2B8073 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, daniel.baluta@gmail.com,
 fugang.duan@nxp.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, festevam@gmail.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  4 Jul 2019 21:43:55 +0800, fugang.duan@nxp.com wrote:
> From: Fugang Duan <fugang.duan@nxp.com>
> 
> Add the baud clock requirement for imx8qxp.
> 
> Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
> ---
>  Documentation/devicetree/bindings/serial/fsl-lpuart.txt | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
