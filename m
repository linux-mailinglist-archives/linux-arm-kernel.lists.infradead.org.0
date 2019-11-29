Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 759FF10D05B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 02:23:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wfpk3fyopznd4vhHBSRpWWzwxsYgf+qel23Yvg9p9vU=; b=VCMEHFJxTJQJZL
	w7Euj5vsd4J/Vp5jfaVzYObtn3g4Yr0g7AAp6OgbYxmT0VFvRGc3pmaPkJBP+NegHaCUdWR1eh+Ll
	buQQG+KdbVZ75xHzmITXJnazKNcu60GKT4IyjcCg6P/5UjXRH3b+pLXX7RGkG1dlOMtlCrAa3PjA+
	WOTyroiZbjgERI5HMue6dfJQo9sfA04ezZvWCHIOHJ6r+nVMxfhcMdVtV54KzWK6Ipm3z0LqjtTY0
	SIM9B9jICUfmgpP2n6UJckkePtJjRaHqc5aYbIU7GRJfvezCPI3rzURBg2FP3oLSY4DRcQurhXB7D
	np2qXVqX74MRtVNeibWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaUzw-0008V7-Vx; Fri, 29 Nov 2019 01:23:05 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaUzn-0008Un-RH
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 01:22:57 +0000
Received: by mail-qk1-x741.google.com with SMTP id d124so9004668qke.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 17:22:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i702aI34Ezre+0jrw+L6vx9jKRLYCS8yu6Eoq+4nGJE=;
 b=dTehSbOkY05Dr9nkgHtoKE1xSiDuW5wG/Ajt1b3KazxlRGS9m76EmQ0EGoKnsfLbPb
 Duue+a7zkw1MO0Gzq2mA7tdyiQd1nS3VT3d3UkK3yXBnNGvLy/ZTkLPilzlW40pp3+me
 NlZ4IVSvcbXLRiRtthWxx0lEasUQXG07FUQkQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i702aI34Ezre+0jrw+L6vx9jKRLYCS8yu6Eoq+4nGJE=;
 b=gRZqQJVb1GfxeUU3Q557Am3TdNtCTPxSc/u21hRzjIEFhSquxSa934TL6sQ67ETdwj
 LeeDK2B5TddI80Zq5S6GLJdRnYDuzYmyPWSDaKSsgYurFgF3ouEuR1ol/2bxh0nM6Zlh
 Pc3u6Pd+eB+c3hOiqHIAgHfDJtoviGKQEnZscsI99qIyhuxdBCp3zU7wgor6XXC8eyVy
 Y55ml2mlXbxa+DyZRnFbUKr/Sg7N6d30zEUY3VlJu5LM9JKu2HaqHrY/rMViQWidQe5p
 gFjff652tPUaKfJ0+9HpFLiM2+8YmlUIJmk/F7lD+6qPaGGJNp80sXzTUSjaeUUuJFDR
 fG6A==
X-Gm-Message-State: APjAAAVrT1bqeWe7FerPt5ToQzBk53ok/MWlp6nfYV5dXgyj0jjoCX/Y
 XxKbIb20Rfg7gkdSNuA8mn3uT0837t1YTLMBrWI=
X-Google-Smtp-Source: APXvYqzz9CXdrxz6xF/zS1AxHhxumwbTlTDCuJZgIlcJE1zBHaC5e91x03jmrOXsqeNZRVN0YWwsyRZ5BX10t1m375k=
X-Received: by 2002:a37:dcc7:: with SMTP id
 v190mr13463552qki.330.1574990574036; 
 Thu, 28 Nov 2019 17:22:54 -0800 (PST)
MIME-Version: 1.0
References: <20191010020655.3776-1-andrew@aj.id.au>
 <20191010020655.3776-3-andrew@aj.id.au>
 <20191126180320.1A2132071A@mail.kernel.org>
In-Reply-To: <20191126180320.1A2132071A@mail.kernel.org>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 29 Nov 2019 01:22:41 +0000
Message-ID: <CACPK8Xd73GokmT=6ABDQSJoumHL4aMLx3R2qkp9PqGThRExz8A@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] clk: aspeed: Add RMII RCLK gates for both AST2500
 MACs
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_172256_263417_94A136AE 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 26 Nov 2019 at 18:03, Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Andrew Jeffery (2019-10-09 19:06:55)
> > RCLK is a fixed 50MHz clock derived from HPLL that is described by a
> > single gate for each MAC.
> >
> > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > ---
>
> Applied to clk-next
>

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
