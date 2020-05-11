Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D0B1CD6CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 12:46:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iHy0nnlG1NT2je1SzxVO3JhB+POmRYpFaZDgLJssddA=; b=ZWstb8rXEyDwTd
	mO+Qrpe1ywGauwUS2KPkafnmeFv4/0Un+CRuw7UM1Tv+Z+0OxZ2fkqSPBmKzSaCZ4k0dEQp1GzqA9
	OtMCs1MFZjMFo7TS7kyZU8WcGZ1/VV2nYKeX31Eq4nZ/cgfWIVkBNa29uEm5cnmSl9yCWibgsywdw
	YYHNwmhi4GX+n/PNwuIHPTKtAdq4MmHKqGlSN9xGmEe6doaCghlOJudWNyUPtKucVBfIhZyBVHCjZ
	yCt0d84O/jVH9MQY+uXKxqvjpLCeVYiD3rqQS8ow29Dce469vpJ8e0uUyzidBqj0FzFi3CbUsACmD
	pKq3/N+b1oiuGjcALt4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY5xO-00050J-IF; Mon, 11 May 2020 10:46:46 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY5xE-0004zk-Fd; Mon, 11 May 2020 10:46:37 +0000
Received: by mail-ed1-x544.google.com with SMTP id s10so7505907edy.9;
 Mon, 11 May 2020 03:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=urJaoEU+KjNM8t/1W6rOD5GSwCsLZCnOcRW+jTf5YXE=;
 b=Ms5aX7PKhyl1ejvyS3mnFs2nrNI7o9KLkrVFTPKNqwRnap699bfDKc9D6s/vSUipxY
 FcAiZPLw3t+NcJaMlBhdvTCt08tF4hqsZhyBhh1YG7SxLRFfA1Zu3YEKhkCMUMYPxI6H
 9zmn6kQqdvWEwZ0ZGT0oWX1/cOHDbzocBIVHwwX2eKzRjLVvU2Kff77bPXeRxVkHcwq3
 TGbBnN168spbj604i2YNRNCmZ3LREk8XX577TjlA6Ktvvs4/z5JzGIpmPRvykVGXAmxd
 C1moJkh5Bs777C9cgkrHv+RmbCaoHSDa24U5ntO2hDwx4OshBUHLh3W31g1z1ofboKB8
 BStg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=urJaoEU+KjNM8t/1W6rOD5GSwCsLZCnOcRW+jTf5YXE=;
 b=WbS2hn30MhlABHRF+VvlfAIquZItmf0LpY31SXaUqrEWesKrySKpPGpjfZWhR/O4Gy
 GVdn4+H+vAhXkVkl7LsBc7ZIABxUFSMi/bcCgQa8JTOw6z3gT4pYxmM41inYI3tn9G2Y
 xKbq4ymtHrLJY6U4ElDByKjSV/bOfTc5iVPnEaLLWi8wCoOglRFelEUimCImuG6KBTAs
 FXVl2LerXYedta4c2zJSlwN1nI4IsZ7nZOE+heFKXKxcHJ+bBudjaOtktuSpzWziXINJ
 Ft2zCvOjKdnGxBTLAtBVCfStep+cF8Q9M5twQHyeqH+M0rT4meV4OkwXnFMUt1fbTq0N
 3Bjg==
X-Gm-Message-State: AGi0PuZYhnELUBYDWywTvzuvOfs54QWJXbs1prPShwyOgaDRTMu+zsHn
 vgCmzkPIA9T32JIQXcAmgXlOEL3HTp8Ddt+Q70g=
X-Google-Smtp-Source: APiQypKHPD8WQl5PzmD5IhowpK2bhwpFyWu9KvvRIuxOVec1ue35BXCcqWpfO0EbdFjdmjdqBSG4tdgoyLg8B1+ZCyw=
X-Received: by 2002:a05:6402:1a46:: with SMTP id
 bf6mr12476835edb.44.1589193994538; 
 Mon, 11 May 2020 03:46:34 -0700 (PDT)
MIME-Version: 1.0
References: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
 <1588761371-9078-2-git-send-email-amittomer25@gmail.com>
 <20200510155159.GA27924@Mani-XPS-13-9360>
In-Reply-To: <20200510155159.GA27924@Mani-XPS-13-9360>
From: Amit Tomer <amittomer25@gmail.com>
Date: Mon, 11 May 2020 16:15:57 +0530
Message-ID: <CABHD4K_h7wc1gc3wvya1PRTRjMRkDPW==yrAWSk7cCF9ghkUjg@mail.gmail.com>
Subject: Re: [PATCH RFC 1/8] dmaengine: Actions: get rid of bit fields from
 dma descriptor
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_034636_543933_FFCE15AD 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andre Przywara <andre.przywara@arm.com>, linux-actions@lists.infradead.org,
 cristian.ciocaltea@gmail.com, vkoul@kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

Thanks for the reply.

> I'm in favor of getting rid of bitfields due to its not so defined way of
> working (and forgive me for using it in first place) but I don't quite like
> the current approach.

Because , its less readable the way we are writing to those different fields ?
But this can be made more verbose by adding some comments around .

> Rather I'd like to have custom bitmasks (S900/S700/S500?) for writing to those
> fields.
>
I think S900 and S500 are same as pointed out by Cristian. and I didn't get by
creating custom bitmasks for it ?

Did you mean function like:

lli->hw[OWL_DMADESC_FLEN]= llc_hw_FLEN(len, FCNT_VALUE, FCNT_SHIFT);

Thanks
-Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
