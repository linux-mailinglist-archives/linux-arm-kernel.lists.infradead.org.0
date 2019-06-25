Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B3E54E79
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:11:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYDvq3V4sSocHWVepJs/o1j/R+MGwRKR/6ZB9UvUaWk=; b=mhn++fhsTACL5V
	JGb6vAiNasQRobLFK4oqsKYlpbhIz/dcMjL/gKW2D7ZG9OCMTLdFdqcC2f76KoHpa3VYs65h74Lwf
	aU8ObntUERq+Pnm0rAe/hKqd8l1wwvxSA6/0FSleIJAp6pJDKlPma69SC4zvCD9z7unGvKROTCL+z
	YEwZONRRipERTjTptjaE5lxsC4BneDz370eNRyNFWs3VqKureZEHj9xPVACdbmWjIzwO/ptWbdDNt
	kvlNIXfdgNw6kddFnSfLR/jGIVebCI7uBZomoINMqAI8cC0KMHA/lfUiAupF+gum3Kw5g2RbGueVh
	45wyCTeiAOHCJJsuh1iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkIg-0006Jr-Ho; Tue, 25 Jun 2019 12:11:50 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkBy-0000CM-Ae
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:05:01 +0000
Received: by mail-lj1-x241.google.com with SMTP id p17so16024773ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=IS8jSsu0/5v/tOlUobYv0GLSxrxflUDuHOzyY3AITEA=;
 b=SbKuiUAYxqW1W65wTF0lcS3lAcZx1nzhzPSc/bAnmQ6UfF+OClrTmPGUhzjbzamOWk
 0whDtlfn7Xq9HKNV3vHiwHm0RiqPLLQU1/oYMWsiOaFKxaRFWrEV0dyhvQCx+FZVXgBp
 03AMXILQ9sov1LgLeKv3nrGctaJdJPERrs+3+Nu0vEpXl/4TX0pCWBxEaHMnyLqtDmWo
 vHLHzpgIvoabtHkcxhhG3rf3+Q9OY3OmEC7tYWeU8HHFRh+6jzpfftDaSywiY5xjCglO
 uSZvmPlbZ6Cv0SZxr3Azkr8uEbHhfFqe8Iq4ZM+knqugYWbibxXVlBRbPnGpQOXzYf6E
 er2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IS8jSsu0/5v/tOlUobYv0GLSxrxflUDuHOzyY3AITEA=;
 b=jUuV4oyVbH3zhpAk5AB1KJucplpdPOG6nwlMEwX1sn5eg1phw8FiQLt01tlmOxN+Lj
 I0Zo3jsUiXXWG1o3FV3u4vHGCX9i9N2QFvIgKJl7gkoCN9S6F+5Gn/3EzYvCPJUtkNJQ
 +agDuD1ndCD/6iKVEWhoznlaLk5rLBRJuPEEuTqhvg7juT8iwFYEV9gOTKHA+6nGhfcl
 peUH4gkeybBIydfFn6LIPfn3q7EjiS1GuCI+mgbVQJRrtd5vALZ1vodTfuiX+N3tuAa4
 tkr1nDmMJVs1KAcncaecVA6M6EWmyzgX9sV8ErvXZayUapXqjATdHjQFXkklbItRhqB6
 iXqA==
X-Gm-Message-State: APjAAAU2GKtkMXa/WEIUEkiPV4ns2SXLfRlNqgKlCiBgEsEAolVeu2fb
 AHlak8wChSNcgWmdsCPTspja5A==
X-Google-Smtp-Source: APXvYqzz/mup7OzTKlrrQYohsWEgvr6qCQYebYIxj2U12y2O5/jMOqn5Z7dwwFtef/mfIuCS9QZTWw==
X-Received: by 2002:a2e:9b57:: with SMTP id o23mr36637966ljj.67.1561464293000; 
 Tue, 25 Jun 2019 05:04:53 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id 72sm2222586ljj.104.2019.06.25.05.04.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:04:51 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:43:51 -0700
From: Olof Johansson <olof@lixom.net>
To: Simon Horman <horms+renesas@verge.net.au>
Subject: Re: [GIT PULL] Renesas ARM Based SoC DT Bindings Updates for v5.3
Message-ID: <20190625114351.66osq3ejvwhqgp53@localhost>
References: <cover.1561107729.git.horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1561107729.git.horms+renesas@verge.net.au>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050500_224128_ACCDF56C 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 arm@kernel.org, "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 11:10:54AM +0200, Simon Horman wrote:
> Hi Olof, Hi Kevin, Hi Arnd,
> 
> Please consider these Renesas ARM based SoC DT bindings updates for v5.3.
> 
> I have collected CMT and CAN controller patches that were slipping through
> the cracks into this pull request. They have been acked by the relevant
> maintainers.
> 
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-dt-bindings-for-v5.3

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
