Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 578EFBF0B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 13:00:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=brG1XW7+dMP2cGkF/YzNFnPz2qoO9GD8vR6d4aei2x0=; b=omwdwl/Yu53vg6
	y0oVcPKOC5brxz5QTmlFHI9VRSvwgsiKMveiQAbg0ojJhU0TBca2t1YrQiKPiin2gL6s/FzNtzrbD
	0qnV1vvitFp2Rxw3yluDXtbWTzY8o+oziASYKG4/QOJ4jIrX1NdwgtiI6IWG3x3wkYXucOMFeMQKd
	cULlbydtuv4XSq+X1IeJmbAgbarzPxH6NJodEQs/h4IXutW3HBngZjlGSTaKTIxlaTXLp84V9WArS
	0UHv2+iSboyW59mN7zlpp2NqMHCP/xoMC+xEvq1LmW9dxxu+NoQ6065LQMNzODwGtzSsWcg8gQtPf
	aTrqQh8ToHlFPgcp1Iig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDRVQ-0006tP-BS; Thu, 26 Sep 2019 11:00:16 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDRVI-0006aK-FQ
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 11:00:10 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 0ce53a4c
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 10:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type; s=mail; bh=OMOzv5omucJd4GVIqn0w61KzgP4=; b=w5GqWH
 S/5rIueHmdHNJQ2ozR3M8N4Op4jY1IjXhStqrTHSfZfZ2h/2hH7hpOXFd0O68jxN
 tnOulFFLFa6fgZq2Cq8cRk48Nk/RE9UEH8OBMN1tt6kKh4zk1kXJFPtt0z1efNei
 codu7TURoH7SD+fJmkoBmuVVYGIU+S83mHWod36cA8wI9jubXCEhdkxG9s47DYuh
 uCGVanB+c7tk9NiHo+IxLA5V1VeWJrVKP4v9CEywvqIF5CUTUO1i9aOSwX1tCbq0
 GppXdHrUFCKw3PFVLiyjy4D2xDTRKjOCCZv4F9lTH0G/VFg/uM7kjiF6glgEZ9ej
 gHBwoegJiT377New==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id b02b4d71
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 10:14:11 +0000 (UTC)
Received: by mail-oi1-f169.google.com with SMTP id e18so1715609oii.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 04:00:03 -0700 (PDT)
X-Gm-Message-State: APjAAAV4g/wupZEbT50HWuDP1C0AvM0FSRZXRzbNgmF1B6ZznhfleYUw
 J2w1h1qn3OKHNVqrVLsylnRcIamnKPFittLSw4E=
X-Google-Smtp-Source: APXvYqw7XDVbdEQOtu6Uk43Zy457ni1rT1sdFCQhIJbCnoxqGO04mdmpZeChsNbk+yAB1w+VwttiF7uo/vkUohYeCNk=
X-Received: by 2002:a54:4807:: with SMTP id j7mr1970768oij.122.1569495601762; 
 Thu, 26 Sep 2019 04:00:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <CAHmME9oDhnv7aX77oEERof0TGihk4mDe9B_A3AntaTTVsg9aoA@mail.gmail.com>
 <MN2PR20MB29733663686FB38153BAE7EACA860@MN2PR20MB2973.namprd20.prod.outlook.com>
In-Reply-To: <MN2PR20MB29733663686FB38153BAE7EACA860@MN2PR20MB2973.namprd20.prod.outlook.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Thu, 26 Sep 2019 12:59:50 +0200
X-Gmail-Original-Message-ID: <CAHmME9rsUoU6N6pQnUmz=NQeaaJzu7_E7R47M095JptPhk7nbQ@mail.gmail.com>
Message-ID: <CAHmME9rsUoU6N6pQnUmz=NQeaaJzu7_E7R47M095JptPhk7nbQ@mail.gmail.com>
Subject: Re: [RFC PATCH 00/18] crypto: wireguard using the existing crypto API
To: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_040008_804057_F174EE25 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.95.5.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg KH <gregkh@linuxfoundation.org>, Eric Biggers <ebiggers@google.com>,
 Samuel Neves <sneves@dei.uc.pt>, Will Deacon <will@kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 12:19 PM Pascal Van Leeuwen
<pvanleeuwen@verimatrix.com> wrote:
> Actually, that assumption is factually wrong. I don't know if anything
> is *publicly* available, but I can assure you the silicon is running in
> labs already.

Great to hear, and thanks for the information. I'll follow up with
some questions on this in another thread.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
