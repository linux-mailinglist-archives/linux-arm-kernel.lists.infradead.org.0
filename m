Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C6283294
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 15:20:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1QUcG9cuUDahzAf16HDmsdzrAw6lXq6RYUlmtsMugR4=; b=OqAs5FOAZm8gAJ
	C+aaGoxD5yXpCqGDdKI/i7r3l8GIatI8LsDmN6dtl63yUr3MvDyVl4b4eVi5q8RKu0Ti6UOtnvBs9
	uz+EjzcmSnph2GxouYi342JLJKtTrCXzZNyu/iSXVU7Lg8h6SSfTK/gd+3DXdfX1mH4/iI2YKEvdT
	fFvH7xl3DBdmUAcx+rar4yyPnEPe6hKS98uXwUf3HFS4sHsbaevsSosMdxuDwiovPCSqb2PnRnOfI
	aaHQY8Zt0nIR6MhONYZY1SDIvGEelYYjDcxAPt9TnEC6xQwsixe94vVm6YoM8DsrqwPN13lQdLToI
	CXATzSseFCy+ls4mz/MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huzNr-0000KH-FK; Tue, 06 Aug 2019 13:20:11 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huzNf-0008Vq-RX
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 13:20:01 +0000
Received: by mail-pl1-x641.google.com with SMTP id t14so37849671plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 06:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=techveda-org.20150623.gappssmtp.com; s=20150623;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=IBYvx+JN3Tfby2a0Arr9iQ+FXDdmq2f9yE3G5sV6sLw=;
 b=rk8JETipFCVycaKi9C2t1/NXX6S9JXK3Kci+dufck79btVc+OPSWTY8bo4+JdQvNzs
 wc1xY+HSpCBWg/RHE54WVzhNLjtfMVV/9fWb6Gofl9zZ5Rnoc3ec5Tj1x3+tfXZYCIoJ
 5q9fWxc/tE1GE2rHWpJU6uA4KWYY4+jqCFmbJ8WMZR6TpZluBcCuBL2AwVKzm2pejAX6
 o91L5g3Peu2pH06dFOlmxN5mVeBDBMxITfy40Qz3cFDYUp8uWOWJ87OGWdQMf9Z2+q8e
 yt2SVZpZGFSJfw7WqFr/mSqe7crd3spigbpomxSqXHHbMZTjByf2z957ggO8c0sVs7Ev
 JC4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=IBYvx+JN3Tfby2a0Arr9iQ+FXDdmq2f9yE3G5sV6sLw=;
 b=ixFyoJ8/rwbKhjb3frC05sazrqoF+lS1j2TCKtaqJ7QRSNGVdRkf9uBIVR1DcGRqLr
 iL09I3CVlC7yWVb9AhUGA/nk4O21YakehSEch7qR3fKmW1PhoqMiRgjJ6uDoVBizugu5
 W/oCFYPE0Z6QSBMBL2PzFY2iTB2OeeJ7VsT8nK8Y4/+cboSTBoOtQ2QfjSmClbgvHlTK
 DnRkZcN6vn/xO8bbRgqX2TsZXLbEofh9FHCyk33yePDnZdO0LGCKaXhDuGuJ0o9vtHla
 BPQBevXovX8OqZ7n8ISNAx0TMPVgQyTnFjmFdlnH4R+4D1DkjEwO9iqmbTVW2czjqsEm
 rpHw==
X-Gm-Message-State: APjAAAWyokpjjMfaGVZRUiffq3UFxzd0ft43xYk/9y5MJyskv0A66qlE
 rIUNvUSmGpVDUONTbLJxiBGh3A==
X-Google-Smtp-Source: APXvYqx17DAM1y2MpTGW4R9yvKYeLMnLAnm2Qpx44e6ubvVEIXtRpAvdyjcfrquxR5V+ZpCsaGThZw==
X-Received: by 2002:a17:902:100a:: with SMTP id
 b10mr3120380pla.338.1565097597255; 
 Tue, 06 Aug 2019 06:19:57 -0700 (PDT)
Received: from [192.168.1.3] ([49.204.224.178])
 by smtp.gmail.com with ESMTPSA id n185sm75009415pga.16.2019.08.06.06.19.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 06:19:56 -0700 (PDT)
From: Suniel Mahesh <sunil.m@techveda.org>
Subject: Machine specific static mappings iotable_init(), are they required ?
To: linux-arm-kernel@lists.infradead.org, linux@armlinux.org.uk,
 Linux kernel mailing list <linux-kernel@vger.kernel.org>
Message-ID: <a0d03054-b583-2d6b-aa32-e0f453767b88@techveda.org>
Date: Tue, 6 Aug 2019 18:49:52 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_061959_953791_FB981371 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: thomas.petazzoni@free-electrons.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I am trying to port a machine based on arm926 with MMU, having 64MB of RAM.  

I am trying to understand the difference between: 

machine specific static I/O mappings which are done via iotable_init()
(done via callback .map_io in DT_MACHINE_START) and 
dynamic I/O mappings done via ioremap()

In the kernel docs/mailing list, I have encountered a statement which states:

"with machine specific static I/O mappings which are done via iotable_init(), 
registers can be mapped at the upper end of vmalloc area so that one can use as
little of the VA space as possible so vmalloc and friends have a better chance of 
getting memory"

I am writing board initialization C file and got stuck at .map_io callback function,
whether to define it or not. If yes, under what scenario should I do it

now-a-days I think less boards are using iotable_init(). (is this defunct) ? 
I might be wrong here

Can't I use ioremap and do dynamic mappings when ever required via device tree ?
If I do so will I encounter any problems with vmalloc area.


Thanks & Regards
-- 
Suniel Mahesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
