Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8471211050E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 20:27:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yCOmLW5PxU+pmDiyhWIOZ/L+cOjISz/iusPNZvAlvaE=; b=XbZqUbttmQG34y
	7NOZ67N6ZPB0OYr7wagm/Xco/PaSQOKHvkvWTKXGB9TCz3Q8r6JicNdec1hJjNnjc1adWX432m95S
	zVBbs5w1K9N41WWJqVGAVcVKzJi+R5tHZ2Lhbf6c8RurPHz33OF/OFpjC+BSL/NmrOCfJSWwjWBYa
	MP/ooFmjYa9oHOsWJvQU/9HicnLWgRLXxWnHvHJkGFju46KKvy+sWAaO0TnnEhB4JJKuX/c2/DMwt
	xd2WJAQngLcchYYUzkWwiwfPKGRENhOZRPMOmJxlW02sF+6bspXJRH46p89jvM2guXTXXiFyItgLC
	+ye0B6Bi8c8HhgR+sSwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icDpu-0000o0-Sv; Tue, 03 Dec 2019 19:27:50 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icDpl-0000nR-71
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 19:27:42 +0000
Received: by mail-pj1-x1042.google.com with SMTP id w5so1893124pjh.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 11:27:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0PgT9Sm6MTMXuNLnykZQsd6rodt9b9uQNxM2B4NE8NA=;
 b=DWtDNKTCoDd8AVCIaKWfQfjF6A4gU6y0pXYZm1LWLNrAeN5pJ9Y396tGvuAKw2+hjS
 9I0LbSyqQ7l9MmBlbcleBIcWLxNqWH2bsVLpQ+ej/42KKf0q3gq/rnkxuw6tkqD5Iju4
 MAlpnzmxV8tZ8LLrVN/c+JoRc0dk9pz8WRgp/Y+xcIAGODoylB4pay2xzNuzBhRz2VsS
 95AyBS/cKU80PT2U9kwEHMkM1ATpRNwkmL30hBQckrBKSZq3//5quE+bwi0lOB6eXZMt
 2akPUnbWrXS8XxcfKD5SXmiaP6FvnzlR+5jSGWF7M3GKsCanmAcbZgk34LXmIxqC9Lpv
 2IyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0PgT9Sm6MTMXuNLnykZQsd6rodt9b9uQNxM2B4NE8NA=;
 b=FqRuMQ7xPBD4lF+k+iIe1dLmzfOXg8n8ndRuMoeQxx8ef2tj/ofo68QNSF4abwoJdO
 bDPDKupNCQK1CwBGR5DipEyd0YvTNRa9HyyyZKrRmc3jAvRSDBEuYSYcOhae1N8PQcKN
 uuQiOsUGZ7QKRLVRQQOxSdIyeJ+l48SG7sr/0bF6JGvfShyaXtE9B4/mLYZ5L2bHXaQM
 ZXw3GEprnP/wwdKjaYqP9LQJAavmVsWBAyG7JvALavnOcQCo1KQz7ftw8WFRTr83UgKr
 /CN5GtnIaewNi9hWCrdspr5yPmF/W1l9zV2exhUv6zmXp3QnrH3VFPPyLc3DPWGRFzrL
 YMxA==
X-Gm-Message-State: APjAAAUBexRxpuIQrpQKHZWjvC/qPkFX5Yfw06w/RJgGCe4n3TscPXsi
 UzLStS1sxcYnKaUX1U5ONvwKhpbibYuQ+ESXIXE=
X-Google-Smtp-Source: APXvYqwc1SheFyTjSmLHWhBW+YXY6ussA8W4aKKbrfYIk26KUHYQylX/y9/Hfdg+UU5PNMTEH5UyuW8U8XCJn2rOjDc=
X-Received: by 2002:a17:90b:3109:: with SMTP id
 gc9mr7346216pjb.30.1575401260458; 
 Tue, 03 Dec 2019 11:27:40 -0800 (PST)
MIME-Version: 1.0
References: <1575349026-8743-1-git-send-email-srinath.mannam@broadcom.com>
 <1575349026-8743-3-git-send-email-srinath.mannam@broadcom.com>
 <20191203155514.GE18399@e119886-lin.cambridge.arm.com>
In-Reply-To: <20191203155514.GE18399@e119886-lin.cambridge.arm.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 3 Dec 2019 21:27:30 +0200
Message-ID: <CAHp75Vf7d=Gw24MTq2q3BKspkLEDDM24GVK4Zh_4zfZEzVuZjw@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] PCI: iproc: Add INTx support with better modeling
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_112741_258700_5D67C1AF 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 devicetree <devicetree@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Ray Jui <rjui@broadcom.com>, Ray Jui <ray.jui@broadcom.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 3, 2019 at 5:55 PM Andrew Murray <andrew.murray@arm.com> wrote:
> On Tue, Dec 03, 2019 at 10:27:02AM +0530, Srinath Mannam wrote:

> > +     /* go through INTx A, B, C, D until all interrupts are handled */
> > +     do {
> > +             status = iproc_pcie_read_reg(pcie, IPROC_PCIE_INTX_CSR);
>
> By performing this read once and outside of the do/while loop you may improve
> performance. I wonder how probable it is to get another INTx whilst handling
> one?

May I ask how it can be improved?
One read will be needed any way, and so does this code.

> > +             for_each_set_bit(bit, &status, PCI_NUM_INTX) {
> > +                     virq = irq_find_mapping(pcie->irq_domain, bit);
> > +                     if (virq)
> > +                             generic_handle_irq(virq);
> > +                     else
> > +                             dev_err(dev, "unexpected INTx%u\n", bit);
> > +             }
> > +     } while ((status & SYS_RC_INTX_MASK) != 0);

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
