Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B398BD83E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qpbTbcaCcy02Plh7VFpx/2JSuFMe3oyKqf3PmEBuAYk=; b=Ahq
	2O6cNfWtvDj6TZFEJNYSxlk1bk4nWDAZKu0NlbSyb8PUU1oWJZrbOGbXorRLClAxHnYg7H0eB3cq4
	1OAXj+I+//eXImyJW90zR19QIizizQDylVgt44HMTXTyYEXzsU12NPWDdSu6amFlGt6u9xqQC2BDW
	vQRWceAwg1u97xWXprOsFQQ/cVvGRDcK7NzTUkN8W3EuiSkXB4TB5fw6IZrpbI5ZPUE1g+QiJxCAe
	27f9SDKGF5+KF/ZwTb23DkUbU27l9fFkuMCgBkU+BJEQOVSlUZ4FaTVPC386P5gOMZLLf/zb6aSis
	+DxGn4L7kOKJCXyjlpX8hK5sOEzbxgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVZe-0003PN-Sn; Tue, 15 Oct 2019 22:45:50 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVZW-0003P6-UA
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:45:44 +0000
Received: by mail-pg1-x544.google.com with SMTP id e10so9032132pgd.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 15:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=1bUylbnf/ijYUFyNHUOHrR4ReBx5Q/B7TVQ4ppAfqII=;
 b=T2jYhvr6TiadcqROfJ20FGuCM4Knyni6wsNlhfGxDMfXJAqmO2ladct5sVE19s7OCD
 y/xBOe+IFExKYknpQItRxW5zjsCXlDVa2TeOXNqR8JumpobSizb95jd3mLpL+doMVUJ0
 7OoKVGtGysY2GVTTOZHq6p8NfkU+tJqeNWdqk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=1bUylbnf/ijYUFyNHUOHrR4ReBx5Q/B7TVQ4ppAfqII=;
 b=fy1JwpuzhofhI2bxDk/BOFjEqgr43P+1E1lnSjrDjoxFkH5tEYXuPaLogyZ1RjgC2n
 TawMVolFsWOfc8NLaawUpLfuboZtaopBkIMZ0l6b+5LhRh6PBDa5L4aR35my1yOhy7BM
 WHbC05J3Nw6YetB4oLEuA4VCWfTxyq9d3OnwdncXOB5pa03PGlp1eNKa5+biHmF/XaYt
 g+31+/LJ5rsyvmTBpkv1B2aTBnQYVaKnrpZqZP8rfAg6RJUMLnsjZSO9gnqXx8R9EmDH
 IsHbQjMf3Vd8XzLQsuWAJvvkIkcFtYlo5FqVczqnMA2KU3QgKcJZl/tmsW3T5az/LeYV
 tipQ==
X-Gm-Message-State: APjAAAUf0HXAQwlQfFhoS6eaPQ0gsdIMwAt8QfeUEf55jSXUojxbPqQh
 SBKgObGXQLwARoHhU16zF3MjFQ==
X-Google-Smtp-Source: APXvYqx5rLiQZDfHCEtsdvgAeiEL0ltx797XfMMt09+s8XlB6C/EHFEv7HECzEYYXWRWpIkANCaihg==
X-Received: by 2002:a63:2f84:: with SMTP id
 v126mr40876731pgv.100.1571179541407; 
 Tue, 15 Oct 2019 15:45:41 -0700 (PDT)
Received: from lbrmn-mmayer.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id e127sm23019837pfe.37.2019.10.15.15.45.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 15:45:40 -0700 (PDT)
From: Markus Mayer <mmayer@broadcom.com>
To: Brian Norris <computersforpeace@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Gregory Fong <gregory.0xf0@gmail.com>
Subject: [PATCH 0/8] memory: brcmstb: dpfe: introduce DPFE API v2.5
Date: Tue, 15 Oct 2019 15:45:05 -0700
Message-Id: <20191015224513.16969-1-mmayer@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_154542_977637_D6A44972 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
 ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
 Markus Mayer <mmayer@broadcom.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Here are a few changes for the DPFE driver for Broadcom STB.

The changes and enhancements fall into a few categories:

- some code cleanup
- support for deferring firmware download if the rootfs isn't yet available
- introduce a "new v2 API", which is half way between the existing APIs
  v2 (now called "old v2") and v3

Florian Fainelli (2):
  memory: brcmstb: dpfe: Compute checksum at __send_command() time
  memory: brcmstb: dpfe: Fixup API version/commands for 7211

Markus Mayer (6):
  memory: brcmstb: dpfe: rename struct private_data
  memory: brcmstb: dpfe: initialize priv->dev
  memory: brcmstb: dpfe: add locking around DCPU enable/disable
  memory: brcmstb: dpfe: move init_data into
    brcmstb_dpfe_download_firmware()
  memory: brcmstb: dpfe: pass *priv as argument to
    brcmstb_dpfe_download_firmware()
  memory: brcmstb: dpfe: support for deferred firmware download

 drivers/memory/brcmstb_dpfe.c | 164 +++++++++++++++++++++-------------
 1 file changed, 101 insertions(+), 63 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
