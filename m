Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F5870F0C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 04:17:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6xybHPWYfJdSpMj2/n2vvd/rWxYhzHljAAtTTXjnjmE=; b=ncYwgjmjKJyiH1
	8UK+pvZsxSkPD8eY1FV/wt/PqJ6MG7tkR8dhHrb8NjQb0Fdy1Nk/okduJLdSSEkVD+uidGoJfNIVf
	uVopYg+fCUxwjxB2J1Xd60mjhXeyd0Lzhd2GEKdELPhi+4VM3rEw0D9jDkIeQ6uMxGluH7CPkywNn
	99Ud/ymRdE+sP4yzGsJMxHPeDJYaGnmZSjGUMqtDIVSM6Gut7vptKvL4MBt4t1TlZMeINpDP1xZdh
	Yn93zWG4mdke99r+mvHFri9u4e/7jC6rTUBvXxTyBv788rUxEfY9pbecj7jAu8Fj3qxDSjZhYokza
	BUWqC6jelHsjaE3hCuRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpkMd-0000Dr-GJ; Tue, 23 Jul 2019 02:17:15 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpkM0-0000DQ-PU
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 02:16:38 +0000
Received: by mail-qk1-x744.google.com with SMTP id w190so30008961qkc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 19:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7GgnchVxa85kofAIjboqJCKA6VShjGUyfwivNl63GJ8=;
 b=enwqPukvvi2Os0t54GJuz6TCm4CbxxKrSuAL/QdPmtJdzjuFCj+I3xLRmS9ubxIVnU
 BmX3XK1IKQ5Bp0Kt/rsUlcMLdEBkkWjkLRdZWwI1i4MFfM4/gIPrgaFA4uZFUnjSXwTo
 BJKEsm19zmW8OfM4acCvQ/4de/DyLISE1/szE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7GgnchVxa85kofAIjboqJCKA6VShjGUyfwivNl63GJ8=;
 b=dau9MgW88ED6sJyPyQsluSxD9x1h8fPrqCZLqWkKXDvNy9fhzuKFXFDCxWVx3hBSyp
 IU+Hhyd2wg8fTz2WgzedJGDatNppD+wGewaIJraQObGClzWC0uYOoIUWJZi9p9t+jAME
 6MwUZlwWU7r5HnCII+Kq2GUF69CUzDQNHrOvMtlnfDlWjBnG23VBa41RkpQrTEIrURbF
 sNvKovuOnRwfWhCfgBZDzUSut/1BJRFxR89IbfR8Vm+tTuu1vB8TnbHLVdu++Rg4RLds
 MxEN21aIYzEu+jce2/3OFgOC6VFRH7G+gM04qiwlcaFolg9d5HKzLZmU35eNmKCY9OgD
 Mp1Q==
X-Gm-Message-State: APjAAAXoMYybRK1GqyzgUxu/Ozx5lWlGzXbUqMSv6P5Th6CSUECBbETp
 pedZ0l+x8FuFPQDkX2EZMaRpjrdwn5+UFxvzCyw=
X-Google-Smtp-Source: APXvYqxU3suR2c+fS3yT0aq2lqnTUt++7MYnhK9oL6tGmvBmBmm6edtD6GqRPtAqNuBdgfYwI2gPuRDH4KkZOah0kFs=
X-Received: by 2002:a05:620a:16d6:: with SMTP id
 a22mr49006146qkn.414.1563848195224; 
 Mon, 22 Jul 2019 19:16:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190723003216.2910042-1-vijaykhemka@fb.com>
 <a0a8162e-c21b-4b3d-b096-1676c5cc9758@www.fastmail.com>
In-Reply-To: <a0a8162e-c21b-4b3d-b096-1676c5cc9758@www.fastmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Tue, 23 Jul 2019 02:16:23 +0000
Message-ID: <CACPK8XddLM934ArbA13GEN6m9KpgOkQattE5p8qBpv-yL4mJ9Q@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: aspeed: tiogapass: Add VR devices
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_191636_894612_888FE50B 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Sai Dasari <sdasari@fb.com>,
 linux-aspeed@lists.ozlabs.org,
 "openbmc @ lists . ozlabs . org" <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Vijay Khemka <vijaykhemka@fb.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 23 Jul 2019 at 00:40, Andrew Jeffery <andrew@aj.id.au> wrote:
>
>
>
> On Tue, 23 Jul 2019, at 10:04, Vijay Khemka wrote:
> > Adds voltage regulators Infineon pxe1610 devices to Facebook
> > tiogapass platform.
> >
> > Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>
>
> Acked-by: Andrew Jeffery <andrew@aj.id.au>

Thanks, applied to aspeed's dt-for-5.4.

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
