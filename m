Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B202D3472
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 01:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rIgDus8lVohp0r/qJc3rNmzTjwNVgdhDbOUd/rtHcMo=; b=LjVLS70AjuaS+p
	y+wibEaX5BN+qFM9LCBcH9R/ODCqLvVWg74WJCEeISrZdotlwSEWlCwyHTUgzku46sLxfpaTBXCmi
	R4B68eGQRrqzM1csKj3YbYeniDdggYlShRbERWq/t5pcjpj7/1c1BJrCXnVRDV8bAk3eDaaApgv5l
	7iUxUqFwFvxuh/DCdLUgB+iNyaU2kfNk2f9YqpOBYAyFVEzsV7Nr+0EpetcgW3mcrh6hXbDQeThgW
	x84+gkuo/mvzpZNKmkP4LNO8eU1cTGaqZF7MU+1j9NRIqV0LRtm6e8dkwXk5FUlvijL2HvPAzZBAW
	xL47NGyhk+uBmo/j7NMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIi2Y-0006J6-Jg; Thu, 10 Oct 2019 23:40:14 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIi2N-0005fP-Kf
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 23:40:04 +0000
Received: by mail-qk1-x741.google.com with SMTP id w2so7289624qkf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 16:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qzY2GiRsLdKkNjOULOmOY2uh2S6GFNejWSTG+vyFaHU=;
 b=BAVg1aEQqMRenewRVbfHesEnWeY+3OjzO2is/qAbM5snBow68FC34L2LRa1QaZ3eR5
 9Hk1wAjLnBY22hsxQRBsMj4hM26tHiYTXepbuzNl9+eRSSK3tvAvBTPCqWCj6HZbftgd
 F3oFG0waiCp5yvWHjy7xElgo8yxABrzwKmroA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qzY2GiRsLdKkNjOULOmOY2uh2S6GFNejWSTG+vyFaHU=;
 b=Nh2nMj11BHOWGI0/5pasGwJ09OQKQFc0tNkmu7OjvbUbVz2ZZf/LprZ/Esp/tJXc+a
 DUfY0AWavwWcKok+2d4KvXcsJGWwd5Oe8mBz5Mg2pLaUS/IgXkYd0cCLQbAGlnAr9mCT
 8GzIZ+mFjqYtQPkrilQ1U+RuDSZBx5Gg6CD2/JTfxOXFSKUuPB+FNCUOj2fdK7oSkUNO
 hGM4vhgpMQVomnbkalNZZLjCPVYYAPlAueDe0z6CX4YIdaV2RrYLJdqS+6vaThavVu5u
 aLLGDmVbj/ZpvDe53M/tlN18tbbZ96WDSk4clnIrB2kQpJacumcOK1F8pdKyz3RF5oCY
 deTw==
X-Gm-Message-State: APjAAAVMaWa2jK89gv1ybs7vTweFcBd82mlRr5uHQklywl23f1Mac/xN
 GbBvdh4Yy2p270EbGnhBxTldIb79kAkYLes0i+A=
X-Google-Smtp-Source: APXvYqx12wus94E93QLNJZDQFKcLjtUWJadRRN6O4zaoD5brzLAp2CQYDAJzj7qrNBW2/PzPYUcsc4tkO6fvhiMuSlM=
X-Received: by 2002:a37:8d1:: with SMTP id 200mr12927454qki.330.1570750802156; 
 Thu, 10 Oct 2019 16:40:02 -0700 (PDT)
MIME-Version: 1.0
References: <20191010020655.3776-1-andrew@aj.id.au>
 <20191010020655.3776-2-andrew@aj.id.au>
In-Reply-To: <20191010020655.3776-2-andrew@aj.id.au>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 10 Oct 2019 23:39:49 +0000
Message-ID: <CACPK8Xc2mibu+Pqi7ejGT_M24oprgoOik3Z8=fP6NVgEQeZYZQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: Add AST2500 RMII RCLK
 definitions
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_164003_736704_782BFABD 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 10 Oct 2019 at 02:05, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> The AST2500 has an explicit gate for the RMII RCLK for each of the two
> MACs.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

Reviewed-by: Joel Stanley <joel@jms.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
