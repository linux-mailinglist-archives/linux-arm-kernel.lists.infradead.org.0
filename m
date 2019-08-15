Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 325748E8AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 11:57:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XLr1HVyGQQwjh5nzfOG+QhijlA+zYBg02XxlT1hyC+Q=; b=hdQ
	dBsLVcwaD/39T+AvvwYKSgt+sOWCnZf7xD2EcDYUQqFk9WzPFR78yqtKuE3MLF8N4BjkDDuZqFazX
	fp1rWVyflu8zTHjjBvbndyVepdmaKNvBDdzU9mX58S6QZCm0rZUju1mEHPR+1mujKUqzLbTdG6/tL
	DxMk2ZRvTnioTQIaaSAebI+FkMjODc+6HmHO6BKHCjWaJvOVEwQ7h2cPVfjpFi2dRFIYnT5ZHOArO
	bp4/sDzK0RcQO3wW/nQ8eUtF0vF2Rs9aLo2YhWQImmLVXrTJBngW9ibPAC35Kfl3fPAGaiYvq1Jsb
	EPRwGQd99JWPME0BWF6SYCmHGYNjq4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyCVO-0002GO-U7; Thu, 15 Aug 2019 09:57:15 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyCUr-00025R-0y
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 09:56:42 +0000
Received: by mail-ot1-x341.google.com with SMTP id o101so4639638ota.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 02:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=0MJNBM3wXQjL3kFhEpmZzh2snc0+oyZ/CNhpo2wkSSM=;
 b=h9hK5gTvHEPrOfKz58gnV1WhmUooZKvQyjMwzQHAsnr0zW0/9wUMN1U8MAtAoQn8Xs
 X9A+JSaLTRhIX/MOddRXVGxdeaE1y+8OhyNhP95awpE5YHH1lw830P0fjifBkuE4GzOh
 37PffXrh+yubgqVUjXOCD3Rte3xBi/9bHhoSCD+kkK81GTwE8y6lJEb++CdphZglV8fk
 eEzfxAutz13nSWAXsiJ1bSoJb2KbOSnrUFfGpdcXLzbuP7r7C0xlYh+szNg1YVHBaXTu
 AjufZTYZRuwAmQGW9WIu9NsI3m/INcm4yihf3IlW8KizF+R/jlB4ij2YzUyEf9jbUFHf
 FD9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=0MJNBM3wXQjL3kFhEpmZzh2snc0+oyZ/CNhpo2wkSSM=;
 b=NNGJF5CjpMtrqttYpwJevm15nO6lo4Y489PANH0v0kiJa4G/TZY+sX4oX5f4OyAC3m
 yRVpSVoDJ7mIoHgTxzy8ms8KtfCbHq1EdKJNsl2GfSY8mjtisUyqdSPQcnC7/7s2epTZ
 34/37/QUxeYLfzkcQp3F2Q0O/9iVcSCW8Xd0/ca+NnG9HGnKb4I5POwk0GfyQEG1h/x1
 iVlsZX+/E05gOnxOG9ElkIJnG2747Ts6MKT2FLffzLUClRGnLXVmWOeBLapDHIiy85ke
 NcoQIkoMcyrhUDMV6HJzxnAP0+ttdt+AtEinCK46UW7amG8m3SiuoXhMqjYB5DdTvexr
 n8cQ==
X-Gm-Message-State: APjAAAUr4kGCdo2J+BjmDNn+fa/tyMeFR13p5278O9tJOXpDCAS+8JxA
 cxKwEJT2OiSUVG0walJlMTj4y5pyEjMUOfVg7rM=
X-Google-Smtp-Source: APXvYqyzyqQ/+0i45nwmipiv6meGdV7nGB5VSKkyUB0Sygw98VnXsQCRLE0xkRzQhPNpjUlLRJkyXg6hpY2x/IYkUqI=
X-Received: by 2002:a9d:c22:: with SMTP id 31mr3071697otr.48.1565862999028;
 Thu, 15 Aug 2019 02:56:39 -0700 (PDT)
MIME-Version: 1.0
From: skodde <skodde@gmail.com>
Date: Thu, 15 Aug 2019 05:56:27 -0400
Message-ID: <CAJrUJt_HV+8MCGxv4=bq97JFiKqPtgN4ntfei0TmxGhDT-bCQg@mail.gmail.com>
Subject: arm64/efistub boot error with CONFIG_GCC_PLUGIN_STACKLEAK
To: linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_025641_063650_1EAAB4F1 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marco.perosa[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I've enabled CONFIG_GCC_PLUGIN_STACKLEAK on 5.2.8 for an arm64
macchiatobin board and I get the following error when loading the
kernel (using grub-efi on top of edk ii):

EFI stub: Booting Linux Kernel...
EFI stub: ERROR: efi_get_random_bytes() failed
EFI stub: ERROR: Failed to relocate kernel

The kernel boots fine with that option disabled, but strangely
presents the same error when disabling only CONFIG_RANDOMIZE_BASE.

Let me know if I can provide more info or do some tests.


Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
