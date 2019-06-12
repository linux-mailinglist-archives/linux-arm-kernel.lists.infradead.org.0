Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD3B423C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=q0lb0vobm28hidcI4MqWQu3L/ErfBURfqoatD5wXZeU=; b=FDv
	xgQ7ZgbO4rLTIEBRGQmMmxpxMumRkkdLurIWS988TMAUaDPvpTVQLgKgG/GzyJKyvKYnca1BwwLdo
	amlbSkEe//vjmikmnWujRUDU/M5cmWR3UrYuH6pAVBHKVOKVW08IOllG6Hh3dIlk4Us0S3FXJA1DT
	RsTuCXs0X3RvSQDPAfG9GOVTcQAmSTe5L0RuhzLpxB2BQdkcs74HvPNhS0U5dt5SFjp8sMQkq3xbZ
	tBuIhOptl1+9KDvIzKveiQxOAWHAPuX97Rb7EM49MrH+7IOSs2Gh15x3HY0P+sddGWwtpdAhTll62
	NQbEC0Yul/4m2xUkBMaaxlmVlaw3oYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1EE-0007uT-47; Wed, 12 Jun 2019 11:15:42 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1DO-00064g-SY
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:14:52 +0000
Received: by mail-wm1-x344.google.com with SMTP id c6so6118785wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 04:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id;
 bh=ty2XijTo8qzlvWIRg0ZCeFPnQ4bNV/bDxc1SRgb6iN0=;
 b=kyP/eNBTAZVl7AnnqwObvvrM3tqayRsKb073Bm/hcEIyx7Ex2NgEMqajny0Y81CoDw
 2ppIdkgB2jVGEdaggnB0DncQVLUlO59WMGp3pC/at+0e7ohsNLEJg1pdKtvtAXo3rj8n
 tG+QbHxkmoiYkkNPI8RDGfkzOWwEm5phagzIQ4nslDn8D0RZU/gCt02Hl2/5eTdkeA68
 ftTEchRVAKEVQKWNV7/NlonObf4V++ZFDwbP31kq1d+jieUGmrrwKESqrLh0PkHD46Jk
 bFjWEU7K4Rrv+ud3KyGChSkal6qvGFhN3fcV/iD9k/K++QiN2D4dzmjP+73dO/zr49+4
 sSmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=ty2XijTo8qzlvWIRg0ZCeFPnQ4bNV/bDxc1SRgb6iN0=;
 b=VjaCl9pzMb4cYbNZNb2Lar+ZCfeoR5S0mNNcAxSQwp+uacHrOr/4utD2wvE24ny4lf
 WC/vb8sagB35b2Mv5/tFdcwZASrscw7KtV3fRDuKolBgZTwnbmHVZ+J4Ztq6UD6XCHZ4
 OIhYs6QRxC2Oj1agu6z6dxdXbyHtruRIgLkDREPXLfUw2Gp9zrFKSnwyjrQJU+937WWo
 mQIO88gGAnEx9yVmog8GipoM2OpQMreCBmcvLHYQ7JvdBc5kU5DXPumPqtKEVVVWqH6V
 eazHntIhCHdgallh8IrNSPuHGYDrHFGqezLCEF5ZU9tzf8KxftbNWWgKm8UlFn34bRtv
 TWfw==
X-Gm-Message-State: APjAAAVQrEd3Xf06/5eGKkCJRUtV2IVYEPyx5OGW3IZKZtwLfQ7Y/6SX
 yxIjPGNwE0p+iHPhU2J5HpXbnw==
X-Google-Smtp-Source: APXvYqwZOCKItFssqrJwKk7MTTd0XJLNuRWwgIPMocmAo9N/2avS/g7Rf/iVxuLALuach9gSgPQ3nA==
X-Received: by 2002:a7b:cf27:: with SMTP id m7mr22159144wmg.7.1560338088311;
 Wed, 12 Jun 2019 04:14:48 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id y16sm14843742wru.28.2019.06.12.04.14.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Jun 2019 04:14:47 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: johan@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, michal.simek@xilinx.com
Subject: [PATCH v2 0/6] serial: uartps:
Date: Wed, 12 Jun 2019 13:14:37 +0200
Message-Id: <cover.1560338079.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_041451_016993_F14DBB94 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This patchset is fixing several issues reported by checkpatch but also
major number handling for multiple allocated ports. For more information
please look at the first patch which describes more details.

When this patchset is applied driver only reports one checkpatch warning
which should be fixed via console.h first.
include/linux/console.h:147:    void    (*write)(struct console *, const char *, unsigned);

WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
+				    unsigned n)

Thanks,
Michal

v1
 https://lkml.org/lkml/2019/6/10/186
 https://lkml.org/lkml/2019/6/10/187


Changes in v2:
- Fix typo in subject line
- Swap patches compare to previous series
- Add Fixes tag
- Split patch from v1
- Fixes second S_IRUGO usage
- Add Fixes tag
- Split patch from v1
- Add Fixes tag
- Split patch from v1
- Add Fixes tag
- Split patch from v1
- Add Fixes tag
- Split patch from v1
- Add Fixes tag

Nava kishore Manne (5):
  serial: uartps: Use octal permission for module_param()
  serial: uartps: Fix multiple line dereference
  serial: uartps: Fix long line over 80 chars
  serial: uartps: Do not add a trailing semicolon to macro
  serial: uartps: Remove useless return from cdns_uart_poll_put_char

Shubhrajyoti Datta (1):
  serial: uartps: Use the same dynamic major number for all ports

 drivers/tty/serial/xilinx_uartps.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
