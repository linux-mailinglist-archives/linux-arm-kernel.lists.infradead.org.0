Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7016A7516
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 22:41:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xz04dWBFX2UKNv/3KtJktMDm4PuTd+pQTzb4ZqqZwVA=; b=d5ST4PCHtEQmQm
	XRINVKkh4Ay9tQ0D0GrzbvCc98tqgg7oT12VXVmZk+1FXxks9PNYWgWb5vsavYpSr+ZuAsc1LY211
	aOKlWCR937XQfYPuuYO3oC60TstYXeUDB4cN2vqCMNMBq7tNghS304cQ9idnpNv7lwY5LlWZz/wZ+
	Nk4Iz2kKuI3k7t9AXBWIHpKeW0esFvC9cWT+Sd/zTm+lyMborxQ0QlHA+MehnGsyleysLYpSbR/Pg
	ExOVNKaaL6pAoawN0cCcNiS5XnMrxo8hPrPQk43iDvVc+MwTUlmUc6LXY42Q1zgvhNxxIc39HcXCS
	UHoVFLn4k2zIM19Fm9Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Fc8-0002CS-V2; Tue, 03 Sep 2019 20:41:21 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Fbt-0002B5-Ay; Tue, 03 Sep 2019 20:41:06 +0000
Received: by mail-qk1-f194.google.com with SMTP id f13so17374988qkm.9;
 Tue, 03 Sep 2019 13:41:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cn9O+LtABBLqC07ohD1/n6zUnz4dOrwHZE911DJV90Y=;
 b=KKFt8YBhx2+UalR81SdzFSJCZzceglU6Y8B/vO6Sm79UVBb/Yzl0RKgcc+UZp28r4z
 7AKVpM3K+3QO+8CVRwJ8Z+JaHMD8oBXfX2wWjrtZP8J/gTq2MTpMOjTsMuQtbFACJusM
 ZGQSDnBrtWbbG7RUCiYWHctavQcZHPzzU6iA1JrM6ptZrKCanVQRClZFw5Gn5ufRZ0k/
 e8qUZAPByHaUhA3OMfw+qdEf6O4I+fEYT0QTTh1cmCobttTPNiuSUfwOmaUDWdhiWMSD
 R3MGeq3MAiPYdJRWKCQDm2FoOGSbAAnGuk8wEytQsMUjdosdQSC55qPlU7XFTZ3dnEYn
 CuyA==
X-Gm-Message-State: APjAAAVTlQX/7HkzJeVSRLDrMttp5PtwhZGeWfnrXlZbSC+XoMNOCi7w
 MdLZXXCpulL90etWw8eJYGnCK3AM/XJVK9L2/R0=
X-Google-Smtp-Source: APXvYqxMpSjxdJ471vzxNRPmUlj7RmGGdi8vidlnWVL7gwm6Ed9wfO1w2oRxdeVtJ6wApTQAl1fREzPr+mBZhLxlpVU=
X-Received: by 2002:a37:4fcf:: with SMTP id
 d198mr35814055qkb.394.1567543263655; 
 Tue, 03 Sep 2019 13:41:03 -0700 (PDT)
MIME-Version: 1.0
References: <7ho907rfsf.fsf@baylibre.com> <7h5zmfo8au.fsf@baylibre.com>
In-Reply-To: <7h5zmfo8au.fsf@baylibre.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 22:40:47 +0200
Message-ID: <CAK8P3a0_HEhvVk8Onk-9MBhnaBQT9B39+t6AGA3FRrH-_yMqVg@mail.gmail.com>
Subject: Re: [GIT PULL] soc: amlogic: updates for v5.4 (round 2)
To: Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_134105_381631_A590EE41 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "open list:ARM/Amlogic Meson SoC support"
 <linux-amlogic@lists.infradead.org>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 1:34 AM Kevin Hilman <khilman@baylibre.com> wrote:
>
> OK, here's the respin (round 2.1)
>
> The previous version was missing the bindings for the new driver, which
> I had mistakenly put in the DT branch instead of here.  Without the
> bindings and associated headers, this branch did not build stanalone
> (found by kbuild robot.)
>
> All that is fixed by this branch.
>
> As a result, I also needed to respin the DT64 pull.  Since I moved the
> bindings/header patche here, the respin of the DT64 pull will now have a
> dependency merge of this branch.

I've pulled round 2.1 into arm/drivers, but it seems that the
patchwork integration
failed to deal with the way this was sent:

- https://patchwork.kernel.org/patch/11122205/ shows both the original
  pull request, and the updated one. It was meant to detect both pull
  requests as the same thing and mark the old one as superseded, but that
  did not happen.

- Using pwclient to get the pull request only shows the original one

- I actually tried pulling that after looking at it with pwclient instead of
  the email client. Thankfully, you had removed the original tag, so that
  failed and I took a closer look.

I suspect it would have worked the way it did for
https://patchwork.kernel.org/patch/11119171/ if you had specified
the subject as

[GIT PULL, v2] soc: amlogic: updates for v5.4 (round 2)

i.e. kept the subject the same but the version inside of the [].

         Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
