Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2163545CB4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:23:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JDlNGqqEiD3FfTgHjHsnEHjB5ibasq0LffZSOk0gJPM=; b=SkoggR8/cxvdCP
	9XJoajeurE8B53Df/W/EAVgrwsQr7h2UY82ZHFAtanV3GsJHDKLI4HU1gJeO9lpzhZ0Hj4ULYKQQ+
	bPwCo+6Uw1PvwBKwKVtmKRS/Q1r3msJwQj0dZUI/lovD1OKCD2eHpyIC1qGXOrmKDGBfit85bLBRE
	fN/jAq2wddsCHktFYuzKhjxgu/E0FlbC7caLBaRMKFDiQHoH9NqJDGxBGdpzNuR7UxL3DSTOHeSbm
	S1i0kpmmKY77KgsEh52xJqzLJgkG8eItl/u2JxL3bwJ0NdNuNq1cSHNVd4v1Vfv25yUaW0xqR3G2s
	ZOcASxAutmYK3gvEYp7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hblEj-0006ZA-Ui; Fri, 14 Jun 2019 12:23:17 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hblBn-00047D-4A
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:20:16 +0000
Received: by mail-qk1-x741.google.com with SMTP id d15so1502870qkl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 05:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6rc60klXbDdC4U4/MMrqWt/2TewJnLjQ/8r8hSCMd1s=;
 b=iWbnwpM3Kxebrp9DARy7xnFW6kr0KF6p8qC4q2EsM9P78mqslIAqRrIUj8ZBTUvZfA
 UiBAhtpSOHng8d69r5N05E8Pd9q3WGFt2mQ34gwLycRcYSw9+j8M02cm6srnmt9Ei8vU
 ZkeV7zq719zsUoqI2tf7K64TdVSLi9VimJ680=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6rc60klXbDdC4U4/MMrqWt/2TewJnLjQ/8r8hSCMd1s=;
 b=Aa52RfSI4y49eLx007hCZ+wN/pcKxNpQ3HJ+3tXbxhG2oSnPf1omfNynCrc/W0RI4k
 +9DXsjf9Ijt64z6nQbbiJQq0+fGW9aNgSsj1vJvmDhWXYf+ynoCgpRwqXLaIeqhI2pSi
 CNOHQI7siJ3fhCtXRL5QFAIVj6h/q5D/Elb1ra5OigSUg2heq8B1kMKeApQsCYBBGsQn
 5OkRe4YG3Il06srV0cuAo8oQHWjGEebRGNIm+ZjWm962XS0vW6yi0ABZSL6n7y7KXrHL
 doHNEfRsmusfdTg4y5hlc6a1yqbXHkV4+6Dh7/u3gwBEMZ0s2xHn8kLs1LEjw1INiYJ3
 17SA==
X-Gm-Message-State: APjAAAVNndxjlKfQiqJ5DzGSzKEfDikFfpSSRTrOXBT5OmEabWaPmslL
 6z9uhkQQ5EFb+8/iUMjeMKqXC+v3732cYVCeF5A=
X-Google-Smtp-Source: APXvYqyGrNC/mqtxIRaAuWze/JoTz2AsfNmSDrq8G4akumQY0TXEILTuIxe67BM5xQ23Pb3umDQ2KTDTek1Fgy9Gk4A=
X-Received: by 2002:a37:a743:: with SMTP id q64mr74518182qke.236.1560514813660; 
 Fri, 14 Jun 2019 05:20:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190509035549.2203169-1-taoren@fb.com>
 <29d7503b-6c14-4990-aadc-7cbce2897fc2@www.fastmail.com>
In-Reply-To: <29d7503b-6c14-4990-aadc-7cbce2897fc2@www.fastmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 14 Jun 2019 12:20:01 +0000
Message-ID: <CACPK8Xe8qNww18hJx2skjYJtsCRLA+uwZsjGUb50u6QLE+wmSg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: aspeed: Add Facebook YAMP BMC
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_052015_388446_B434136E 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, linux-aspeed@lists.ozlabs.org,
 Tao Ren <taoren@fb.com>, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 9 May 2019 at 06:06, Andrew Jeffery <andrew@aj.id.au> wrote:
>
>
>
> On Thu, 9 May 2019, at 13:26, Tao Ren wrote:
> > Add initial version of device tree for Facebook YAMP ast2500 BMC.
> >
> > Signed-off-by: Tao Ren <taoren@fb.com>
>
> Acked-by: Andrew Jeffery <andrew@aj.id.au>

Committed to dev-5.1.

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
