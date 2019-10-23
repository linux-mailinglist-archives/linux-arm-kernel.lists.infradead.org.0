Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36522E14AE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 10:49:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=19o/qtWwq2E7OJzDFuGU1/3/tVe4V78wf85qUb0CvJA=; b=qkUHeQ5ops7znL
	3U8wlshWgfBBbWl5GaUz8BBltgQ6xIjsoagwmMtYVhMF1nDgU2tOEW2TdVBmWQLadSb4PXjv3MFsV
	Ib29H0MVPXtGqHsxW+FaJs++wL5os9I4cjmWtg70abuOIVcgupXYsLwE8tfTg8tigxZ+IFzAYFcl7
	9w5jDhSuOt3aenuHu/jTe1MsklVjw5RQD43PvV4PYJXtbquk6gABBqhyUtaoFGiUivQ8yn0hWvdGE
	81jaaSZTGea3b6QQpwNv4khXD5urgsA+is3h+5QLopgF9kZWty07SxOzKYo/TbHw8M3kXAM0yIsld
	q7oGGOluV+IZdFhiiBVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNCKx-0006xh-Qn; Wed, 23 Oct 2019 08:49:47 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNCKg-0006wT-AE
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 08:49:31 +0000
Received: by mail-oi1-x242.google.com with SMTP id w144so16702116oia.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 01:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ADV4dloY4QrpGFTvy/OoeHNXpjGf72Q0UAxYSc8ChkI=;
 b=huwfFp12qyI2jHm5EkRIvVBfBZqxMGd9x3nLq47NHMuoNKyPqUUlPqebVk2hNWcmoB
 khsxVS+6M6Mwbin2NE2ARQLmtl2uUthxZN6Q0ty4ygeOYJOmRfBZsicWfsp0FZeh0PR0
 0YM25+A7HZueY+CL67+tKQ4O0O+iPzCz3YCSV7s5SXkpIa1N/74v/bSlQ8OVkxDLFOtZ
 t1WUqnauORxl1IlJycJtJDRyJNJFWU0w6tlcmL3a7O2EPySayNDeSJq2uSSuC3gJq3vQ
 lmjitHFVXJtM3d77FbqsRR5hW3PKY6hdPWimAJgEkDU4svHHe24YtTnR4XqvCMWsWMxz
 tapw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ADV4dloY4QrpGFTvy/OoeHNXpjGf72Q0UAxYSc8ChkI=;
 b=oSQ7N/cCAvW7EHVxIBoqosAOA1dGgAhFScoKc2/eeWs9yty2ysuJlgdxj7feBWO3Ui
 j4Nu2oouQF58Mk+65e/v2cR+xSIlDU+vgADHObJ1a42nVvS1QQAoEdiB+U5LqUpVs+pv
 HAsovoSlKMf8wuBPhoryk5tC/gAleCAi5fhMG8HIUCnvm78hmPhJE1k/ne/kctVm3hCR
 x8e6Bth5jcUttqCJ3utPBdqoJzhLiixBdFLvWX95sNyFjShjQa3QM5H2n5ViJQSXSKwP
 ARwwKS4jHcCm3zvmRaaFK0IQtreGH303MTXZKfEULMiGz1nOvdeJZgoZurPijd3NqYbf
 HNlQ==
X-Gm-Message-State: APjAAAV6V8F5yRqc1EiFvj6l/F+jtA09KTssQalaS9NyZbYincrqpjN8
 NXZ12wXzsoiiIGpbgd7lBBAfAjsPmDyFrDasrGbdSQ==
X-Google-Smtp-Source: APXvYqzqfl89y1pbwQVoS8A11ClrnUFaZyaqUTogCmeTUjY5/jx96G9aTd3cpQSBIBLrLvTVV6/LLgDn+8AwgABdV6M=
X-Received: by 2002:aca:1a18:: with SMTP id a24mr6615198oia.145.1571820568027; 
 Wed, 23 Oct 2019 01:49:28 -0700 (PDT)
MIME-Version: 1.0
References: <20191023063103.44941-1-maowenan@huawei.com>
 <CA+Px+wX7-tn-rXeKqnPtp74tU5cLxhJwF6XZ_jeQX-tnAfvO5g@mail.gmail.com>
 <1d948ec1-69e4-735f-c369-80d2b28e0eaa@huawei.com>
In-Reply-To: <1d948ec1-69e4-735f-c369-80d2b28e0eaa@huawei.com>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Wed, 23 Oct 2019 16:49:16 +0800
Message-ID: <CA+Px+wXgXkmVYboPcrhOWkAwRB2ygLDLi+TN9xw2awUZKMhCJA@mail.gmail.com>
Subject: Re: [PATCH] ASoC: mediatek: Check SND_SOC_CROS_EC_CODEC dependency
To: maowenan <maowenan@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_014930_384994_A9207D38 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-arm-kernel@lists.infradead.org,
 ALSA development <alsa-devel@alsa-project.org>,
 kernel-janitors@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, yuehaibing@huawei.com,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?U2h1bmxpIFdhbmcgKOeOi+mhuuWIqSk=?= <shunli.wang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, tglx@linutronix.de,
 Jaroslav Kysela <perex@perex.cz>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 KaiChieh Chuang <kaichieh.chuang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 4:38 PM maowenan <maowenan@huawei.com> wrote:
> I receive below message after I post, do you know why?
> '''
> Your mail to 'Alsa-devel' with the subject
>
>     [PATCH] ASoC: mediatek: Check SND_SOC_CROS_EC_CODEC dependency
>
> Is being held until the list moderator can review it for approval.
>
> The reason it is being held:
>
>     Post by non-member to a members-only list

I don't exactly know.  But I got similar messages when I first time
sent mail to the alsa-devel.

Have you subscribed to alsa-devel mailing list?  I guess it is fine to
wait maintainers to proceed your patch.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
