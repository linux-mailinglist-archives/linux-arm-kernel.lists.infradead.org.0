Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DEF6F57E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 21 Jul 2019 22:16:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9xcSNjuJ80LEk9PZLqaGGD74C1Udm2Qu3o0ab2jIJIk=; b=J/1hzK0A7JNX9X
	34l9g1P9fdBQYI8XEZhKFkUSKoWR7AGKoyyAAKmTgNmCRLr++2j7dm6D6GKCWG8ZSGkVQCyxPQ/SI
	w6OvbI25snY+XOIFzrm9hlwRYpRDv9+1dG9qjHRQhQz/j5thThZNBs7G/QRFiHv9oDCG/c+7QiA8O
	o00pjpq2IffAVqkMgP50OB3o6DfHjDTjWbiyz22H7ngeb1i7UYc0UzR8Ym40BPHmU8SU1ED5gQxMs
	5NAlVKNw8ggehq2WZfbHyZczCffGPk2ZOdsYXfOs9FczR8RHCrGnycaC4NTN9VQEwF7t2Zc5xOsIB
	RAP/x+vx3MtaGi75NnOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpIGC-0005Vo-Ly; Sun, 21 Jul 2019 20:16:44 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpIFf-0005JH-9I; Sun, 21 Jul 2019 20:16:13 +0000
Received: by mail-wm1-x341.google.com with SMTP id s3so33176235wms.2;
 Sun, 21 Jul 2019 13:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5mQURU8XMwBF9h8OyYB1FlQtcwcpgbnQ5NpLm9894DM=;
 b=ajmWzmJ2BZN67FkDAqc/2VVH+HZwyx7YqJkrdYmLSAR+31FdDgla9oyBcD5z0NdIaf
 oXJ7ojT34P5AXnhnJqqtZq/Rth8ClcZyN+fcUzozo3C4Wnz2+mDDdOfw5ls4licNsrFm
 anH1ywRXm/kz3Zz5WAfEgL388SZtjqvIJzo+y3Q7BzTzA+OLVQFXZgL31OseO3hnY3cU
 f8qJWMFKVdH057pZkcFxYwzGvTFiIJNWKcRaVU/Hn+z1eQcTXltLSyRZW6Yi3/j1ReJn
 z16QxpItA85gY9BxRpKp5RgNHG9XpJTDC4rV/ejUHNezCm7S0UuHZW5awX9wrifhaCGy
 TbBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5mQURU8XMwBF9h8OyYB1FlQtcwcpgbnQ5NpLm9894DM=;
 b=pqzd5BQBdLglw4dxey6/OinUSSRV2Yuux6JcPBcgIy9kjt98r2l7jBPXgV9r+c97iS
 /hPZOY/Pwpkb5dmSLdnZm8N9nqrLJhXo780hujPM2hNsu+33U6BhUv7eSRFTtapdJBDW
 zZDXZRGOnq6P5f3QMy9wtCKaqTI89lkOBBssVBsSGlZJsfr7p5KaY3/onzXVSzM5MSwR
 jjrzKtg28Kpap5q4/U4Lgw8ox9l5NIO+rle4T++4XRNbDSKKQq2AfhJrTQfrq7ZcO542
 TEA0sFzmNRUiebzICjECO4O3UP4NqkAnP6R1VoaMw+r39XMbsvLFnEEmznh81mD9dfgT
 uQ3A==
X-Gm-Message-State: APjAAAVCFzG5jJ9esrNyYwct/icXLb1qBoctNgC9p7T7INZHUEGOHKMf
 KTnBUZU51ZqDa0jYuaVRfM1nKMALnx2x65mK3go=
X-Google-Smtp-Source: APXvYqzU1ipDd7z11gYlgbmMIrcaaVPCBINgAjXEUbNhWnpzSlGLMdHtlVTzwYZLvYGsn7Wr+rXtxlWkSm9DOzIIv5k=
X-Received: by 2002:a1c:1f41:: with SMTP id f62mr61089998wmf.176.1563740166737; 
 Sun, 21 Jul 2019 13:16:06 -0700 (PDT)
MIME-Version: 1.0
References: <1563451437-15725-1-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1563451437-15725-1-git-send-email-stanley.chu@mediatek.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 21 Jul 2019 22:15:55 +0200
Message-ID: <CAFLxGvwLTTN+S=Bd0gZWKJbjvanCe_HV_dfmoZzyb1hzWkkGpQ@mail.gmail.com>
Subject: Re: [PATCH v1] ubifs: support page statistics in vmstat
To: Stanley Chu <stanley.chu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_131611_350994_CADF4AF6 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linger.lee@mediatek.com, Artem Bityutskiy <dedekind1@gmail.com>,
 Richard Weinberger <richard@nod.at>, kuohong.wang@mediatek.com,
 Adrian Hunter <adrian.hunter@intel.com>, linux-mtd@lists.infradead.org,
 chienwei.chang@mediatek.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 2:04 PM Stanley Chu <stanley.chu@mediatek.com> wrote:
>
> Currently PGPGIN and PGPGOUT statistics in vmstat is only
> hooked in submit_bio() for block device I/O path.
>
> This patch adds this feature for ubifs as well.

While I think updating these counter for raw flash makes sense,
I wonder whether UBIFS is the right layer.
Why not directly in MTD or at least UBI?

-- 
Thanks,
//richard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
