Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2AC48F79D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 01:32:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9O4lruhFE3Z4MlvozRsfrO/+4rN4Jp5N4cmQGX5xek=; b=JBwCnwCXwsOViO
	ysCIhcxGMwaXQjSQievh5MR6pcCCgVTkpMaVpi6OhNLAB03+/Cdu9mPwnwHMEjBHB7sGAqFq5zxdz
	/cTJH7P1fIOGpihvfV73QxxM8VxKLC7lLELR+55rnUNvsL8VoSaVVZnO6bMTOZsc5tmC+JBjnHNAC
	12g1vPjkWAIUaDq7JC99itXeXXDd8crYF01LiKrI8SDBVcIp1sSRI25CpPaT7bGpQOrozYxt296Hn
	2yZSRssU5D52O2KWQ3I3eXAvbKVM383H1HXzmBtIYmDmJOkVGw/GpWsnow6iLDYUvcEGH47D3q1Tr
	ybGslGrnDKsnM3ot0vFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyPE5-0000Cr-AR; Thu, 15 Aug 2019 23:32:13 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyPDr-0000CA-UD
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 23:32:01 +0000
Received: by mail-oi1-f194.google.com with SMTP id l12so3545061oil.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 16:31:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3W/JXRczT4e7iKML5rUyQ8eYma8iSWGGWO86RntEySo=;
 b=aokbTUDOlGdmuMP713qZAiAm/es2NWgR0r9YsEJMHQ50OFxd5GDoBtgaBeOrL5fPW7
 kY9ucJgrBKUwSZm/mzON5LUkz2XZayBc73QtgTVQ02ysg285jDr8y7UrK+WCjRD10OSe
 k9x/7f46cWaofKd24RhyM8JmVML/ndPIjHlaEUKYa7+NddQL9Cg8JSZ9KQl8u1iC7DjF
 e8CNWO74AnEPVj5V/8R+ZTqIRAyaph9HXtjknv1f7LaV/XZRqvstr6cDB+nrsi8AWdGT
 +etXiIPABpecq7hQffDk/qGffwiVBk4yiDpQRaPeYyNFq0pC1UjzQkOUEN0b7DR6uKS3
 garA==
X-Gm-Message-State: APjAAAX/jxXG1SMeDRNEfTQHi0YwkdPKHsyvLwXCKgDFDFQloHxjJuev
 op083phF9Be21xf0CRL03CLuJU33knU=
X-Google-Smtp-Source: APXvYqyuCiphX5ULmL2kQqvQwz9sBTEDuimwGeqVKg1qtCdW/beiJOqpIFUosKh8xJwyHWSKPvZf+w==
X-Received: by 2002:aca:b485:: with SMTP id d127mr3374787oif.34.1565911918414; 
 Thu, 15 Aug 2019 16:31:58 -0700 (PDT)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com.
 [209.85.210.44])
 by smtp.gmail.com with ESMTPSA id q24sm1531429otl.31.2019.08.15.16.31.57
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 15 Aug 2019 16:31:57 -0700 (PDT)
Received: by mail-ot1-f44.google.com with SMTP id z17so7924933otk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 16:31:57 -0700 (PDT)
X-Received: by 2002:a9d:6b84:: with SMTP id b4mr5482166otq.63.1565911917418;
 Thu, 15 Aug 2019 16:31:57 -0700 (PDT)
MIME-Version: 1.0
References: <1564690599-29713-1-git-send-email-roy.pledge@nxp.com>
In-Reply-To: <1564690599-29713-1-git-send-email-roy.pledge@nxp.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Thu, 15 Aug 2019 18:31:46 -0500
X-Gmail-Original-Message-ID: <CADRPPNQ_3muAr_tVYOThhtPmGXk2gh4qMhhZK402HiHh4fO-Fw@mail.gmail.com>
Message-ID: <CADRPPNQ_3muAr_tVYOThhtPmGXk2gh4qMhhZK402HiHh4fO-Fw@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] soc/fsl/qbman: Enable Kexec for DPAA1 devices
To: Roy Pledge <roy.pledge@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_163159_973169_042A757A 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Madalin-cristian Bucur <madalin.bucur@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 1, 2019 at 3:20 PM Roy Pledge <roy.pledge@nxp.com> wrote:
>
> Most DPAA1 devices do not support a soft reset which is an issue if
> Kexec starts a new kernel. This patch series allows Kexec to function
> by detecting that the QBMan device was previously initialized.
>
> The patches fix some issues with device cleanup as well as ensuring
> that the location of the QBMan private memories has not changed
> after the execution of the Kexec.
>
> Changes since v1:
>         - Removed a bug fix and sent it separately to ease backporting
> Changes since v2:
>         - Expliciitly flush FQD memory from cache on PPC before unmapping
>
> Roy Pledge (7):
>   soc/fsl/qbman: Rework QBMan private memory setup
>   soc/fsl/qbman: Cleanup buffer pools if BMan was initialized prior to
>     bootup
>   soc/fsl/qbman: Cleanup QMan queues if device was already initialized
>   soc/fsl/qbman: Fix drain_mr_fqni()
>   soc/fsl/qbman: Disable interrupts during portal recovery
>   soc/fsl/qbman: Fixup qman_shutdown_fq()
>   soc/fsl/qbman: Update device tree with reserved memory

Series applied for next.  Thanks!

>
>  drivers/soc/fsl/qbman/bman.c        | 17 ++++----
>  drivers/soc/fsl/qbman/bman_ccsr.c   | 36 +++++++++++++++-
>  drivers/soc/fsl/qbman/bman_portal.c | 18 +++++++-
>  drivers/soc/fsl/qbman/bman_priv.h   |  5 +++
>  drivers/soc/fsl/qbman/dpaa_sys.c    | 63 ++++++++++++++++------------
>  drivers/soc/fsl/qbman/qman.c        | 83 +++++++++++++++++++++++++++++--------
>  drivers/soc/fsl/qbman/qman_ccsr.c   | 68 +++++++++++++++++++++++++++---
>  drivers/soc/fsl/qbman/qman_portal.c | 18 +++++++-
>  drivers/soc/fsl/qbman/qman_priv.h   |  8 ++++
>  9 files changed, 255 insertions(+), 61 deletions(-)
>
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
