Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD4013D0B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 00:41:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b4gw1MNObdl5Bt/VQHaSSjIMIhOeys3g8FkSsSS5g1Q=; b=BEqfYPJX2gwknqLtwyLoQ/r9xi
	9ETDzs+M0AVVyVDS1F7RKyiCLBpZwq1EqmKCL+WuIyd+u3UMPUHBL62dD1v3P+PFHuixNQNepgic9
	Cl7+9nTdWfyTaY9GuWnXJ8wOfZGcAfBkmitsiaP+xbgo19idWNGTrfH3cvFdKfMcLxSy9e5L23qoR
	DAN9a3D8ZB+Qczpp4w3rjrQQcfq+ZeiddaEduY0d3BRMnf57e0aV925QcdM2ApeIIZMxYyDDqR28d
	GxCQshrTtehvZ4Bg0p8evkDqTSskLXlipnWV+T35rL7b0UJdUM95sgfA6kJsqXs+NcLSM2ZQQYM4A
	EczvYLQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irsHs-0006Ic-Qh; Wed, 15 Jan 2020 23:41:24 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irsHi-0006H7-GA; Wed, 15 Jan 2020 23:41:16 +0000
Received: by mail-pf1-x442.google.com with SMTP id x185so9268182pfc.5;
 Wed, 15 Jan 2020 15:41:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=b73rwoFfpR8fYFeTkhSZQtojQ3pztbWAc7w+boMg4hc=;
 b=cMxSg3lUGcVqK8YukUF9N8Em8iJ9jZDOJWnsEFdJSXtJedlZnrhSv4RkfVYW1tp8qc
 t65T+ZBM3OkMDH/Bbs3udiORYAzNVLFxui7FFsIr22pyM/lrHTX89HcZ55LttLxtyQaE
 Tc2OxtVOjvJj+7g3tUnDDocHQCqHobVxUljpqK7tgvctsXV5OILaLneAtFxl9wDmDaRZ
 CLMhsj5X3bUgXwYQbqmh8pJxGANuxV7g/pwjNzRjQZ7HG/RE3nsEP7AftQ/JSKkCjZGT
 a9neJBwNXxdo1hp1RjjQv7W0R87hYBt3YbwlUDDeqqqSZLBaELXU2eScKAUTpx4Pqb14
 rx2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=b73rwoFfpR8fYFeTkhSZQtojQ3pztbWAc7w+boMg4hc=;
 b=IPdyBNP2UgqLYa4E+CVyetw4jBDJi0BrQhqJyiQa18RdWZezr+XRxDlxwm3gu5P6gU
 sQnexZLjNXkOIxUAPgLNNNyHyU2rCRP4+uld0IW+38sqk4rhv9BZqYJd/XQ8Tb6cV9YO
 pinVjMDvN+2r9NGZPp5iwFMGQ9neFiryb/WVkOJQhE8wBstQgTSrAIkvDHsujcP+QaP/
 fLxubwCUNvlPtCLlEhXdoGe0WNPmxd0KgNXKKuXK9a5/jktO7Xxvlyw37rkN61XAIePg
 RzOGCWROOj4Tp1QyMUM/BVSDPhe/Gsx2H1XmuUDBpKtL1fHYqs+qdXwS2MpfEJSViomn
 atzw==
X-Gm-Message-State: APjAAAVrU13DATbVpm1duDLmDrSe0a1fp0UtD+p1xFL20o7eK1FIrEpX
 iQ97bb2SyaOqxQMeM79SeG8=
X-Google-Smtp-Source: APXvYqxAvazY9uzyIJsUVYRpxDwmQnZqVBWXjDxMnMkNkwcAycKpsR/9HvNNAYO7frLJIVEeb4PvNg==
X-Received: by 2002:a62:e509:: with SMTP id n9mr33567862pff.159.1579131673713; 
 Wed, 15 Jan 2020 15:41:13 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id y62sm24933344pfg.45.2020.01.15.15.41.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 15:41:13 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, andrew.murray@arm.com,
 maz@kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v5 2/6] ARM: dts: bcm2711: Enable PCIe controller
Date: Wed, 15 Jan 2020 15:41:12 -0800
Message-Id: <20200115234112.30746-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191216110113.30436-3-nsaenzjulienne@suse.de>
References: <20191216110113.30436-1-nsaenzjulienne@suse.de>
 <20191216110113.30436-3-nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_154114_570675_0E0DB051 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, mbrugger@suse.com, linux-pci@vger.kernel.org,
 phil@raspberrypi.org, jeremy.linton@arm.com, wahrenst@gmx.net,
 james.quinlan@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Dec 2019 12:01:08 +0100, Nicolas Saenz Julienne <nsaenzjulienne@suse.de> wrote:
> This enables bcm2711's PCIe bus, which is hardwired to a VIA
> Technologies XHCI USB 3.0 controller.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> ---

Applied to devicetree/next, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
