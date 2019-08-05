Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DB181A11
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 14:58:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dmRESTg5y8jVjt/3yGDUus1CpjLk7bZw2cBbpfKAtKU=; b=kIRpqfAd9QJtvb
	1bsVS6npuI26k0bXLp1hK1JM5Dcot+a7QPWi0M1aScEZwrCPuTOejwS/BVNhPf3hM7U7/X8fjF7wm
	OjTgQS6tke0jvZMJPzJb9waX6ymf0nbApPcPVIPOhA9tSpiUO+i5PUznP35c/L13sjdOVCcwxoQHj
	R8w1TAjlcwqfBTJ+9IsPS2AE404LLbJiaylN9V+xhcogZaJEZu4ctQm8upWiACItXbjzUzXhXvbf7
	zqkK01QDzmaQtYWvtvMD5RrxHKrU2qaaIgcLwe9l5kwHWIuwaoAsZYlBpMvUjBOJCeq3Xx9xH+/5L
	3ugaMs1JEYoo/b1Nb0PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hucZ7-0003pS-Pl; Mon, 05 Aug 2019 12:58:17 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hucYu-0003p8-5w
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 12:58:05 +0000
Received: by mail-qt1-x841.google.com with SMTP id r6so76528421qtt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 05:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:references:in-reply-to:subject:date:message-id
 :mime-version:content-transfer-encoding:thread-index;
 bh=MivPKPOueoXcIGJcGKt0LXrdjR4wp2nG83RTaLMTEZY=;
 b=JfYVW7sf0eL6fDC6/ru5cXDUC8V5WAAbmpUKfx+NapXEwDnk1mKFUtSI+urNKg/03G
 Z9TVn1F05cbJ0Sq1fcia5yZsfZodZNjy7ioRCBWcTkIKgaRDHAKQJxnrSAYkgKgvkZvY
 L1/8yQkod5ras4zwvY0FXB6WI5Zic9IsAQ02hEpOaXTqBXdXrdo0b2m9vFpuses0Ah3F
 p6ESJrKMEVG41r853jeLtndv9U4hVy3guGHnIcO9mpU2T1HO+y6kvkTgmLAB+U58ud8A
 9+de8YYmpPLpyC/5XKv55nItnjKJsHU9742IkGh7QKeO+f0puZeH1Ux6IiHZNguFyZ8T
 F6CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
 :message-id:mime-version:content-transfer-encoding:thread-index;
 bh=MivPKPOueoXcIGJcGKt0LXrdjR4wp2nG83RTaLMTEZY=;
 b=i9+qTXJV5P2eATOi6CAb9TJZ/WhzszxPeHMyZgosC8eoxH6irB0GnhEWyS+C+eISLw
 7ugFLF8L8Wz634wNRZL8KxvZfwwDeasejcPI976Jk5WAM1/MEdXZZA1zlnz35T8JKEAQ
 JbBLmQgDG1S3tIzAPgmCroN3FjtxbPVc8XEbz/JzBnXgGegMMBnGKfDNFQZWznHMOrDt
 1513xljK8BPr06cbYYr45wV7bRIheAxBVej26ksjk5LRdP9BpDkYC9XhVr6kf05WfIlC
 iFGrsUFGd8vlE2caC7zdPXPaJvBmtm/18FcQK4lckWYI8d+hiq8D6l1Rp8ETuMDJ+Nsn
 fFhw==
X-Gm-Message-State: APjAAAUQdDngSTyJt7n6GPiQNgeSUTTfC205xFl2w7AnGGLjCVTvjlxZ
 UoIHfgR5/uURQQRl9yY9h2r9VLn9
X-Google-Smtp-Source: APXvYqzwXoGGR86pBhi6FRDiobz0KU7WEdQ31DGQ/DhLO2WodLU2LQzmKIjCMRqzLwfJERrdBh3X/w==
X-Received: by 2002:a0c:f193:: with SMTP id m19mr110179232qvl.20.1565009881729; 
 Mon, 05 Aug 2019 05:58:01 -0700 (PDT)
Received: from GirolesWin7 (magopq1505w-lp140-01-70-26-203-177.dsl.bell.ca.
 [70.26.203.177])
 by smtp.gmail.com with ESMTPSA id w80sm39107221qka.74.2019.08.05.05.58.00
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 05 Aug 2019 05:58:00 -0700 (PDT)
From: "Martin Ayotte" <martinayotte@gmail.com>
To: "'Sunil Mohan Adapa'" <sunil@medhas.org>, "'Chen-Yu Tsai'" <wens@csie.org>
References: <20190727210307.17607-1-sunil@medhas.org>
 <CAGb2v66S1+CSn=CYwZQOP8V+ZL+D9ayf6cvidzK5ENXOqKRGew@mail.gmail.com>
 <CAKQ8BtjLmhDgA8woY5NqaifODLUh_w_K4QYOUuqc4Six5Amerg@mail.gmail.com>
 <fd19b2e3-e340-f4fd-a320-1cfc45964f5b@medhas.org>
 <CAGb2v66w6y_0NLcT=WminsgK=QXpUPVnMWdCotMmgM1vgPByxw@mail.gmail.com>
 <de875c31-6cb3-8975-ac3d-de4ab3a851bd@medhas.org>
In-Reply-To: <de875c31-6cb3-8975-ac3d-de4ab3a851bd@medhas.org>
Subject: RE: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
 A64-OLinuXino
Date: Mon, 5 Aug 2019 08:58:00 -0400
Message-ID: <1955D9AD572C4F57A2D66B15EB8CF79C@GirolesWin7>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdVLThdvXfy9IbPWSy6m+jS11nnpzwAPzyDg
X-MIMEOLE: Produced By Microsoft MimeOLE V6.1.7601.24158
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_055804_220780_541154C0 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martinayotte[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: 'Maxime Ripard' <maxime.ripard@bootlin.com>,
 'linux-arm-kernel' <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fine for me too.

Thanks .

-----Message d'origine-----
De=A0: Sunil Mohan Adapa [mailto:sunil@medhas.org] =

Envoy=E9=A0: Monday, August 05, 2019 1:25 AM
=C0=A0: Chen-Yu Tsai
Cc=A0: Maxime Ripard; Martin Ayotte; linux-arm-kernel
Objet=A0: Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
A64-OLinuXino

On 04/08/19 8:33 pm, Chen-Yu Tsai wrote:
> On Fri, Aug 2, 2019 at 2:47 AM Sunil Mohan Adapa <sunil@medhas.org> wrote:
>>
>> On 01/08/19 6:49 am, Martin Ayotte wrote:
>>> If my SOB could help here, I don't mind since I've done the commit
>>> more than a year ago for Armbian ...
>>>
>>> Signed-off-by: Martin Ayotte <martinayotte@gmai.com>
>>> Tested-by: Martin Ayotte <martinayotte@gmai.com>
>> gmai.com is likely a typo.
>>
>>> On Wed, Jul 31, 2019 at 10:42 PM Chen-Yu Tsai <wens@csie.org
>>>
>>>> Thanks. The patch looks good overall. The authorship is a little
>>>> confusing though. If it was initially done by Martin (CC-ed), then
>>>> he should be the author, and we should get his Signed-off-by if
>>>> possible.
>>
>> Martin is indeed the original author of the patch. Thank you for
reviewing.
> =

> I'd like to apply this patch with Martin as the author, if that's OK with
you
> both?

That is completely okay with me.

Thanks,

-- =

Sunil



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
