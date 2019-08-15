Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBDE8E519
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 08:57:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cGIB4PAFFMTZjuSXuIDkqS4XRIqzlv5BuFRMUlD6UI0=; b=eZvT3TQn70ZRLk
	wc7nsoflt15pNadKdgjyie3i8fHC02iCdmuzDJT1fjX3cAn/KUOHnuyIanDm9kIMRma4ROrolJyXc
	C8KU+Jecb6WjNnAUVTXdEivXCf7xxxxB+uMWnDhSdVVmrd6F2KsB1Jhc/mjCQa0rvBPLDmPOQbtY3
	nQtL8oLv79b6GcDU28ct35r1nJ0jiQwLKhUsE0ppoVyWpjAroTMMDGQtF/U7LLfSkdtewrHKZXTTv
	mivfdxn/ItUFm40wFi3hNXO+GqyBBXRQ9HHnfx3ULik/PchD7RN6EM4EwccShoYH7h1K1DVkNEvqO
	XxuLXaamEisgis+OViyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy9hH-0006p8-9Y; Thu, 15 Aug 2019 06:57:19 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy9h2-0006oL-Ov
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 06:57:06 +0000
Received: by mail-lf1-x144.google.com with SMTP id 62so992574lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 23:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=hgJrNRBNHtDq7sAYiX+DZ8YnHpU34hU1rQmq3ot6dZw=;
 b=j1AnsEePN/KW0HMmaePlAW+4s11k/qV+uDHpT6ndW/2EcKgcI+1xAwgnAGE+sGMsi0
 PYS0ALOF7iV7uqeiZjb3x1be7nTY9RBZ97TC7N5123EIoK0ckxfYcXV5vKd4B47jzDHq
 ra0el1qXOaVWgxtWxtAVJLH5T7cUjpbgvaecqcP/oRpdMAmDDKu0kK+8faTx47F7E50d
 ZL2gybENJ+Zi037ynuCYC4g6uo/QNwDg4+8fByK31BEc+Uux0pO0NHrezjRDjvob8zvS
 s5r1mhvB0xQgT/Aww9Q60RZHy98c4UxiXYrFuRG5k2KUE+u8e3V/4pBtBjU9LsMbOZor
 SIuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=hgJrNRBNHtDq7sAYiX+DZ8YnHpU34hU1rQmq3ot6dZw=;
 b=nN9OUsTWISs0O14zPsDF/+Voac4nIVv69c7WqNfEoHADZ2YqmdcMaMkaxPO+kX6LYX
 WptElf1z8dkAKFhOPgafGFEcnNTx5+J4Pucse9jSxnFSSxNL0T+qecpKp9iYC/zI1QuU
 iuA3fAaq9XvBaJsKU7VK6fhU27oWGQmMdcN9tt1eSIhHqMZy/ewWAJNC5UTH3WZ3vJJ4
 HkS+VKU659bl2gmkdJHHwsH3rYSk+84EUpJawfjX9vptCf59r5YR6dHZvooCTyViLDqp
 H5eYTmhwKlTvOFtwCGp84HA+t4gLsDHgUdVLtrcxvcmjHHVo7fzBETzqUTTKXXc9J6BH
 l2iA==
X-Gm-Message-State: APjAAAVxdwhYEQNZ+/dDfaU67Mhv5vX3TijPZMYw8u+6tsVQf1NeW8jf
 SSj4elgT+vOFGT8SA3XcdZtpjQ==
X-Google-Smtp-Source: APXvYqzfCzhF11z2F4XsMUzO2mumPQq0sKbZSqSSnFlIg89QB+a7wZox9HdKZUoyffMFbn6H6j1c3A==
X-Received: by 2002:ac2:44ce:: with SMTP id d14mr1626809lfm.143.1565852222061; 
 Wed, 14 Aug 2019 23:57:02 -0700 (PDT)
Received: from jax (h-84-105.A175.priv.bahnhof.se. [79.136.84.105])
 by smtp.gmail.com with ESMTPSA id i17sm303452lfp.94.2019.08.14.23.57.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 14 Aug 2019 23:57:01 -0700 (PDT)
Date: Thu, 15 Aug 2019 08:56:59 +0200
From: Jens Wiklander <jens.wiklander@linaro.org>
To: arm-soc <arm@kernel.org>, soc@kernel.org
Subject: [GIT PULL] tee subsys for v5.4
Message-ID: <20190815065659.GA13498@jax>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_235704_844853_8ABD3109 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello arm-soc maintainers,

Please pull this OP-TEE driver patch. It adds a call to might_sleep()
during RPC in the OP-TEE driver in order to be more friendly with
CONFIG_PREEMPT_VOLUNTARY.

Thanks,
Jens

The following changes since commit 0ecfebd2b52404ae0c54a878c872bb93363ada36:

  Linux 5.2 (2019-07-07 15:41:56 -0700)

are available in the Git repository at:

  git://git.linaro.org/people/jens.wiklander/linux-tee.git tags/tee-optee-for-5.4

for you to fetch changes up to 9f02b8f61f29f4518581770d57bfffe99b1ea599:

  tee: optee: add might_sleep for RPC requests (2019-07-08 22:38:56 +0200)

----------------------------------------------------------------
Add might_sleep() in OP-TEE RPC requests

----------------------------------------------------------------
Rouven Czerwinski (1):
      tee: optee: add might_sleep for RPC requests

 drivers/tee/optee/call.c | 1 +
 1 file changed, 1 insertion(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
