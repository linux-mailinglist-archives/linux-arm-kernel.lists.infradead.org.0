Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E980112F6C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 11:37:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lqUkKQqpJpgqs+bgoGAZXFdpRK9xDTv8j9ScOTXFHdA=; b=iD6eU1ztBu3drZ
	wPymj492FTFpZiyQWfMBn7xQTd8biypw+3iFPRBtRq96joXp6Rd60da0y84tDk2vyU9vGqp/PJF8S
	/NP4d+JTPyWV03Z+SDlrfxXcOuDHfmn1sWimEiiX4Epu6AOYfjuYj3jl9yRQYkiQt+Gm6zhePJOGb
	1NIUUrHIIHeuURRO1EoX6mlcV84QBqXAhNplGfJZeuGPlBk/OHe84JWuM6YLtFNhGdl/KCuWoS73x
	g3RZ49oGZ/6CX5e/2eInqgIaJcJP290x+juIjic9yEgsYIBrWnjPPfDiRUpMxkYs3LZHJqHpA/dq8
	6JzFq7p1XQhH8j7cNBRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inKKb-00010S-7Y; Fri, 03 Jan 2020 10:37:25 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inKKV-0000zq-0u
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 10:37:20 +0000
Received: by mail-lf1-x144.google.com with SMTP id b15so31637373lfc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 02:37:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=e1VONZKN47Aw6juCyL/A73XM5IVvw0+2i1dyfWe9MK0=;
 b=Fhl9YzW8WppJUvDeZdTMGR1XJqmcB6TalG0n7A8zpD55tcqk3ML1vD6zvcmuxMEiQS
 aT5bysK5rQU40UUINDSUm9VXpexB7r1N/CBSFppsXxncAFIyO0y2rkiWeb95HnpwU3IN
 0OyoAH/9qybXFmig7BIO5hERgIp6aWsfDUveXBk1xf5e3kmMhvOtRrwJwpl/IEoEHiJa
 d2HaGR9FrrRj3OKs6DFpK0iYP8fizuP7vdWE0hveGhMePxt+yPI2xRhylVrBmYq5qkRk
 GTHPLMbmpnmvSWkgTOXesoO4IbicDCKbkhCuBYXkOXwcVaspOhnAevfABvK7W6xCICJc
 xsng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=e1VONZKN47Aw6juCyL/A73XM5IVvw0+2i1dyfWe9MK0=;
 b=ngLy1kP4lFjV0NlPLAMdX755o82ENnm8uqW7UiT8zMqRfq0rz2hEkPTZuPBwyGuYm+
 QKdxbsDoMzBUg1wnyy/uBxBA12IZ1BPcWx+0TRo/SFE202lGeUp+EScgoQ2vCkbgngwn
 vNfDuWcadKkYkX7x+bbxTNGjvV7k/0cSgR6U1xZ28NN+FU2GDnMqzkt58LfUP8aueEdW
 6M8/rLSTPko5G4ltsH8iCRMg8CQC+quguHa3HzqLP610sTT4idBH8VDtYJVDVahAPNH4
 Gu92wsOTvHl1eTMTERGcVv3bWlYitR9REw+tETw4qOfa5EgEyWC0DqpHN68Cx1dLBSRN
 WHoA==
X-Gm-Message-State: APjAAAWqGozPOXv9NpBmD083TNdmH49hK9BOqmEIjaml2wj8Wqy1miOx
 khHX4LavJMyiplDjrhr2igKjZv8x2AfRTQ==
X-Google-Smtp-Source: APXvYqzeu11NzT4u0LYNO6/ynfbsLDH+8fwoOKEZ4tO/YtRCEUnX2yjqO7toLdDd2ZT8V37uMiM2aQ==
X-Received: by 2002:ac2:508e:: with SMTP id f14mr46097583lfm.72.1578047832449; 
 Fri, 03 Jan 2020 02:37:12 -0800 (PST)
Received: from jax (h-249-223.A175.priv.bahnhof.se. [98.128.249.223])
 by smtp.gmail.com with ESMTPSA id b22sm15891942lji.99.2020.01.03.02.37.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 Jan 2020 02:37:11 -0800 (PST)
Date: Fri, 3 Jan 2020 11:37:10 +0100
From: Jens Wiklander <jens.wiklander@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] optee driver fix for v5.5
Message-ID: <20200103103710.GA3469@jax>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_023719_069245_1BF016EE 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: tee-dev@lists.linaro.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello arm-soc maintainers,

Please pull this OP-TEE driver fix for kernel allocated dynamic shared
memory.

Thanks,
Jens

The following changes since commit d1eef1c619749b2a57e514a3fa67d9a516ffa919:

  Linux 5.5-rc2 (2019-12-15 15:16:08 -0800)

are available in the Git repository at:

  git://git.linaro.org:/people/jens.wiklander/linux-tee.git tags/tee-optee-fix-for-5.5

for you to fetch changes up to 5a769f6ff439cedc547395a6dc78faa26108f741:

  optee: Fix multi page dynamic shm pool alloc (2020-01-03 11:21:12 +0100)

----------------------------------------------------------------
Fix OP-TEE multi page dynamic shm pool alloc

----------------------------------------------------------------
Sumit Garg (1):
      optee: Fix multi page dynamic shm pool alloc

 drivers/tee/optee/shm_pool.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
