Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 858FB1855A8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 12:43:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xz1cjeqHTHfvJ3RIN8phUo5c8Im07b/y3QqlVBnHf3c=; b=L/9+cVD1dG56vh
	fipnC6XLgRqLJ/Q01YhkfOwQsDm8fmpKazpGanU+BScW1Z7TAAGHM4qnEpBEhTKVtLw7vuYFTrjSO
	SwZAmPGl8Samz0crqbPt3BYUv6eoaCpNZt/8lOFY+/w2PrPr4tkvG8qqfuVucIVZcx9CgKzQP4At9
	gaWD5LWGZfuMsjwK+A3keLmzNGzZdtw+l5CGxQKqn7iEnC1zPL90uT57D4RzwVMt/n5JMGAeF7pE6
	6+jF6310sLO58tCHGEP1YrGP9N81s8EePDLf0kAZJwDY2cz/ec/m5sxHivhXu/dyl1CVuMaaweMHo
	tgkgDxxdVlTZWZhUT2qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD5C4-00063U-9c; Sat, 14 Mar 2020 11:43:04 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD5Bs-00063A-2o
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 11:42:53 +0000
Received: by mail-pg1-x541.google.com with SMTP id z4so842424pgu.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 14 Mar 2020 04:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Uim4AzYBCm6V2z3QF09x5PPcRE01qrMuLypTdVFHimA=;
 b=jE9cFqMIPYofiNcH+xERYgJ9saPt+Kj9OIakPPW3wROVmtHc2kEDMOO04aTSlsYSEm
 AhJstHD5b6Y7Ka9JrfO/E/kIThMLUYmVc3DvSzHvFFsAnVPZbe/ug+yhHMJk2+DgRA8V
 a9TzqqNb3H4w7M4EgiU+rUGvAtVUXTXr3r7+/2sqgNTCvKwLZ96PyfvDjWYqprG5+fH+
 U19nzB0FSdOwDpDlDXi5bGp2k+i8bwk6k0woWuOPQcf7pEanHQyxMkcAT8ELObqiuTsL
 fKSvK/EYwUN1H3eS6ez+aSRZA7ZO+8LphankfmBcTWpWDePWZUtI51qE/iIqcW0uIbao
 zJgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Uim4AzYBCm6V2z3QF09x5PPcRE01qrMuLypTdVFHimA=;
 b=l1c64/KsvX0uz4yUKXXZ7BfBjm/kLUNXY+hA8ufuttAmIr8rGUP+Mxyo7JoIjXQlYO
 dOXmT1mAs9ZhAYxkIo1l4/1bdwmjDI4O2JVhKRpE+EztcItxfaFATnz7A8UofF2bp1/3
 C8hEO92IEx8b/6XShYh9588T9FElMSHFpYISzyqpM37Vc+c87Mh6KxWjMQldpOiLo7oZ
 R9iXinKQCae7in1HMfgYDYuhJOz+g9yKWEUyPS6ykZr/bVenJD65mbxmQZ7SVaALm5cZ
 Qfm0VgyTjBMBzhAwBsRcGb7VeqKXvggtO/0wxqri0svldxhtktma6+uQgNcKgYQ575Aj
 FJ3Q==
X-Gm-Message-State: ANhLgQ3cEnWSKQhBxGFRJInTQ/8elzBDj930bQpWzt/NbQhlyzZe0ert
 /izZvMCAzqi4EIZ2srxySMM=
X-Google-Smtp-Source: ADFU+vsAFNYY+qMaVOBxLw+qtltM33BNN6phFUmxCHU630aJrU4CWVFiR6zHzz/Y0D1cSUuGio/2wQ==
X-Received: by 2002:a63:6101:: with SMTP id v1mr17235961pgb.318.1584186170624; 
 Sat, 14 Mar 2020 04:42:50 -0700 (PDT)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id y131sm17983125pfg.25.2020.03.14.04.42.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 14 Mar 2020 04:42:49 -0700 (PDT)
Date: Sat, 14 Mar 2020 17:12:47 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v4] MIPS: Replace setup_irq() by request_irq()
Message-ID: <20200314114247.GA5577@afzalpc>
References: <20200304203144.GA4323@alpha.franken.de>
 <20200305115759.3186-1-afzal.mohd.ma@gmail.com>
 <20200313164751.GA30134@roeck-us.net>
 <20200314010744.GA5494@afzalpc>
 <204ac322-4214-fc83-e0b9-14473f855b0a@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <204ac322-4214-fc83-e0b9-14473f855b0a@roeck-us.net>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_044252_152620_9B4B4A99 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Jiaxun Yang <jiaxun.yang@flygoat.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, John Crispin <john@phrozen.org>,
 Huacai Chen <chenhc@lemote.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Keguang Zhang <keguang.zhang@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 14, 2020 at 03:28:53AM -0700, Guenter Roeck wrote:
> On 3/13/20 6:07 PM, afzal mohammed wrote:

> > Can you please apply,
> > 
> > https://lkml.kernel.org/r/20200311152751.GA5044@afzalpc,
> > 
> > on top of this patch & see if it fixes the issue.

> I have not tested all configurations, but a quick check suggests
> that it does indeed fix the problem.

Thanks Guenter for checking,

i have sent a newer version [1] of that patch based on the feedback
from Thomas.

REgards
afzal

[1] https://lkml.kernel.org/r/20200314081312.GA4948@afzalpc

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
