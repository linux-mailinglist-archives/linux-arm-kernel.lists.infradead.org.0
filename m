Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0279979B9B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 23:55:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68EXoVUbwlmzhyvq6k/Ni1qLt9lZ6rKgLkvZ75ShtqE=; b=NMkwDH7USsPPIQ
	Ms+rZhEReFkUYMFnOr+aVgnA3z44PoQ/uGLJM3tjFg5oxcFoUjk4GFRgPQQZBGpqyyI1ODtTWKj/5
	KDAxoGZkoQ47wgsR9fEhy/35G5Yrh6/F4F2P1o3+Fl8XSbOOEfZx+5nS3lRsY2m5w3NUCWVQrN2Ft
	w72EInuET2zQXRyr2Sdt9ITZeir2Pm15yQpMrQS0pn/Y5xb+MRpGc5iOU2qiUfoTzbr+MkOBuUa2T
	JVbPkqhk1vzFqFcN9Lu9qEuMumxW+NvIR97nupVt961zXuEheYAOmJJcGxsYJuwFgWDL2dQBXOThB
	RzTvRwJR8F4qufbnjZLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsDc9-0006JZ-8u; Mon, 29 Jul 2019 21:55:29 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsDbv-0006JE-IA
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 21:55:16 +0000
Received: by mail-lj1-x243.google.com with SMTP id i21so60083317ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 14:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WBZi/FWYMVw+6x0q1L6ySXMBwWz8l9YOs94KLfDt+sM=;
 b=maX1fJR459j9bTT/i/FcZluuRJjdtq45t9ua4H0lkFp2Fvu8AvbQWRaoneF4GAendq
 GGsgRy5RasAfnEje6j1sDASgB3suDqgvaKXKvOHPqG35uRffPpCagqEr3tFVfyYOXOF/
 Kq3UZF03LBdNOdM8qNvFlAdI6otpsInC+84EUBzJi34EM8FcQdk5cKkl0wWCEC/XSUOe
 e+BX2jzySgUEhjUc3lit2/Pj/8p/dS0y8IVUKLwkWDr43YNOFDjh325Fr5uHGOso3mkn
 ZkihBU8oefvkAd2bgl6jK3GLZUvmL29WrT+9t6rAvC44wC+Id4+sg/x0ZNGWL0qPpgY/
 +VpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WBZi/FWYMVw+6x0q1L6ySXMBwWz8l9YOs94KLfDt+sM=;
 b=fqEm5b/XOP8ANZof6CcGL4WUsIcjBZKNQnif7GlsXfI5yKst+cO66rdsGiPnCQYpLI
 1EGttrPLOPt6+yPL1a/2EWq2VpLdKZDtpRJqB1MIQpJE9V3atrY/SICKjFw1fNLs/dug
 bjQDgMPs6o5KSXLcBbuAbhqzudfMbNpLFa/xdBppRexSQ1IE0WkODx20gJyyU4miBRxn
 JOjE/uSKQ3z0vUnkTNR3djOm5DKRE4P5Poupag7g53YI+kCTzZds6uZk5C9pof7Vnfto
 JlKkIQ5tJBWniqBy9T6LIXII0KR3l6+CpA7kjLGedbxJd0EuMl7ERagVwv5Dmo1xpj9l
 2eOw==
X-Gm-Message-State: APjAAAVZQiJ8q2UjfAzIz2Xt78vaALoN9To1+Cub2snS/dueAuF1gu9Y
 cNq/ah6RCYIU+9lo1vTEAvMTk2hN1wzAVWtJAG+KgQ==
X-Google-Smtp-Source: APXvYqz8xsOtkV0Tm7m5AoyjAnnPZwbpq0fVDCw0AcnBfOy1aP/HBlFsrVX+y2EqHLqO/PlpIPBTliVBh7mh/LILCMU=
X-Received: by 2002:a2e:9593:: with SMTP id w19mr12076182ljh.69.1564437313862; 
 Mon, 29 Jul 2019 14:55:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190726053959.2003-1-andrew@aj.id.au>
In-Reply-To: <20190726053959.2003-1-andrew@aj.id.au>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 29 Jul 2019 23:55:02 +0200
Message-ID: <CACRpkdZVVgqdt=+YYEauChoxjqKk6=LNKzj-40u3CFLxJr0D7Q@mail.gmail.com>
Subject: Re: [RFC-ish PATCH 00/17] Clean up ASPEED devicetree warnings
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_145515_615730_FAEA33D5 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Corey Minyard <minyard@acm.org>,
 Joel Stanley <joel@jms.id.au>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, xow@google.com, Arnd Bergmann <arnd@arndb.de>,
 chen.kenyy@inventec.com, anoo@us.ibm.com,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, yang.brianc.w@inventec.com,
 openipmi-developer@lists.sourceforge.net, a.filippov@yadro.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Tao Ren <taoren@fb.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 yao.yuan@linaro.org, Patrick Venture <venture@google.com>, wangzqbj@inspur.com,
 Greg KH <gregkh@linuxfoundation.org>, sschaeck@cisco.com,
 haiyue.wang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 7:40 AM Andrew Jeffery <andrew@aj.id.au> wrote:

> The aim of this series is to minimise/eliminate all the warnings from the
> ASPEED devicetrees. It mostly achieves its goal, as outlined below.

I suppose it will all be merged in  the Aspeed tree?
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
