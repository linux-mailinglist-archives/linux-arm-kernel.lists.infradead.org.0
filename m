Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9B01DB1EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:38:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fiabIgb2H1YJfNnxtj2icA2MsgaI9t2sbiT+bPjfVQc=; b=H/B3KsLq6fNX1t
	YL5TkXwjwkf8AOTex5YsuiUqu2YbXlkZy91TbBI3gLIsR5g143zXaXZAAPHmHHgQdhUAGi//g9xf4
	cXXuVHeSt8noPXbe9GG2lsDj1njTP2VcBuCnSCe0ze1wkkXi9t9n8CSpmVDJK1pTfgYVKSlB8+Ut+
	Ege5Pevjo/ZIzdv7YTNakkvHPdvUUYN4ZEjtBLMROK7T90u+9SFcxmWle1E4448r7hBUNELDeIY4E
	f+o5xC6kZXkkmBKGX4X5f1LriNfXer39+0tWPMPLi+MZnrg9bm6Ug3IRyH3yYP6XYJCQ0D+eqF7Bj
	4LlT8y++NBXpV2Ansd7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbN3P-0008Kx-PC; Wed, 20 May 2020 11:38:31 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbN3G-0008IJ-OA
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:38:23 +0000
Received: by mail-il1-x143.google.com with SMTP id w18so2690846ilm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 04:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c5gCsCCg2ZktsI6WZTvCyt/N51Rkad6rw/S1dWQ5wyk=;
 b=FDYEU8Kf25iQOG7H8v613iXDN7QVeKL+0wv2HcOeF3sRFNk3N1B5Cj24Fdas4AojmV
 83ap1eulAyUn1LZ5nsiDzO+e3qjZQ72rCeWIvmDI8e5NrJ3A2s04Hn0hMfPzG09/LjfE
 gczizyQkl0jM38snWj1UiWDG8IJXx9A2WNViJ/tBAAhg7tjx/0FpNTEctqnmSk6zURU6
 lwIcIdDyV7ZfwERvH29YUZeFXb+ypnDYTR/m27s3oA27eDWbIVi6ClpiQ5sCMDwDERnq
 QfoXC+QUT+qIwn70lhjesnxV5QsDVWCLDIFh2jw5OirunO2h65o6ZOLB53sqQKhDKGQJ
 reVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c5gCsCCg2ZktsI6WZTvCyt/N51Rkad6rw/S1dWQ5wyk=;
 b=KNa0wiZtFVn1hNjZ1ZhiuzNRer70Q/KqgZ83HT/LsYDUOvmw0ZlT0H2yeLAhDPzdg0
 FQ5iqMSzEZVem7SgyZ5nP4ckJiAwpyINKZ6S8v4ag3PsZ/a/bD3SV941sMuoMh8+WDOp
 oRTCmLy2It8bzkrpkQS3iL7hw5O9gPzlW89HIZzurGEqvDYlvvhcEIboezXXETvTd4+0
 vdeAHseQ8Wm/eCnb6zmf2x4tdnOgDeAL5+kFPDAZxQZc26vvSAxV5SnC/Q8dGX3vAvW+
 6wSAyegNYiwSDbvseUQzgLzsCTIyTPqq+PxUFJerueG7Oru2bF0B1hLpN1C4AfEM+lJV
 Qx7A==
X-Gm-Message-State: AOAM531/zER5rKdj+3Jp45oBU8OWiGGJUPmkVbYXeOyufEN7EIFVoT5j
 auwLIW715yATKyzlZCAx/1HBwFKBRGhXFoAN8A==
X-Google-Smtp-Source: ABdhPJzKJP/cGNNac1kUPgTwPlLIWOHe6TrixFNrwaMIGkK58srY1G5ZeYUEIcAgtqSbV0sC4psNaRowIFiZqCXO4ME=
X-Received: by 2002:a92:8c8a:: with SMTP id s10mr3283841ill.220.1589974696422; 
 Wed, 20 May 2020 04:38:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200520095113.185414-1-tali.perry1@gmail.com>
 <20200520095113.185414-3-tali.perry1@gmail.com>
 <20200520102452.GP1634618@smile.fi.intel.com>
In-Reply-To: <20200520102452.GP1634618@smile.fi.intel.com>
From: Avi Fishman <avifishman70@gmail.com>
Date: Wed, 20 May 2020 14:37:13 +0300
Message-ID: <CAKKbWA5L_n7iC6-d22Am62SOoDBwNWO87+sXtRbwxwuVdjmRYA@mail.gmail.com>
Subject: Re: [PATCH v11 2/3] i2c: npcm7xx: Add Nuvoton NPCM I2C controller
 driver
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_043822_784648_65584E1A 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avifishman70[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [avifishman70[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tomer Maimon <tmaimon77@gmail.com>, Nancy Yuen <yuenn@google.com>,
 Patrick Venture <venture@google.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, wsa@the-dreams.de,
 Brendan Higgins <brendanhiggins@google.com>, ofery@google.com,
 Tali Perry <tali.perry1@gmail.com>, kfting@nuvoton.com,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks Andy,
Question below:

On Wed, May 20, 2020 at 1:24 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Wed, May 20, 2020 at 12:51:12PM +0300, Tali Perry wrote:
> > Add Nuvoton NPCM BMC I2C controller driver.
>
> ...
>
> > +#ifdef CONFIG_DEBUG_FS
>
> Why?!

It is made to save code size if CONFIG_DEBUG_FS is not defined?
We see a lot of kernel code that is doing it.
So could you elaborate what is the problem?

>
> > +#include <linux/debugfs.h>
> > +#endif
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
