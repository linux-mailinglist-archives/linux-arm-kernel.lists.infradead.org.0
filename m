Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A01891723FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:52:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0GWG3oGeb7BpO6WxZPc3F9GHebtZQBpGdSTw6toHmxk=; b=G2FiMZCL3ejNNO
	ZHqL8y0+viqrKqkUzl06FSZGSDAACWI6VHjFEBSyPOqFVBmjc+Nt95b1DtCgY7VOKenR0wftBWQOS
	8RwSIu5bisVxua/AHol9N44ETBkwMo2peMsRI5c3U41gbloIXJN8IqXpvRSFBXshkLW9VwCF/LBRH
	RwCham829IEtChGlvOPOwWcxYtLMI+LOAl3I3UeMGicVstHBk/wYJ2CoQlYRyBbiTqV3vciqM5BZy
	sKY58g2PBxmCgpRj7VXcLSRFC21f7vLg+4YkZtX0soR/3N53VJiRo9JETl/fERjPW0cEnwpmoaRLC
	zD32LfURE2UPWhUd9kZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7MOe-0001sA-5W; Thu, 27 Feb 2020 16:52:24 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7MOT-0001rU-7n
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:52:15 +0000
Received: by mail-lf1-x142.google.com with SMTP id n25so2628848lfl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 08:52:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=4kXB7FgTmsEGGbvV7uWwCTMrQxdsKT8tnVYNGq8AnCA=;
 b=F6FcKlKKFxpwyeXYMTixXUSJtDtGrVwip31cUGRv9wwTcq0ataMnomX0ntj7BD3cS5
 peBIyQSJxbzuqyk8q7OE4XLGFwlTxOBAIOtl0hmEbYnYnW/879Djtt0UnsRLg2lLiey/
 WMRaYAq6xRshNGqqQZUfqXEMez+ojtVtRKDBCghhusYpq32C5KZ2KH38xzhaYx/ahFpz
 i1S9ppCLWvJ+hOj5mPjAfqNYFc3s8tWPuenSVyOcoRMbXT5bd+i8+Zf0aT0V9wAh8Jsn
 lFOvfqWmT4kk/2ifrHOGlvJ7XLgxeXxFNxOgJW377B7fH0a8ABO1f9gnB4iQgFqBjGtO
 7mWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=4kXB7FgTmsEGGbvV7uWwCTMrQxdsKT8tnVYNGq8AnCA=;
 b=aYrF9cVJfHww+Hy8hn5ppHmfbsGQAHDycRiuI3uLbC45BplziDXv5/WiL+qpytngHi
 01yI6gqCPuGrNQHg4vAHhX2GmFJYwZpdzik0wFtDdVFDTnyVW6mcVp/CNtWG1XBipB2J
 Re11Re9U2rr8TDgeuCoQoGcZsJtm7By/Ri/WcT9Y/Z4Mjk5EZ44IQ+JuCLAhgA/Kuk13
 /01ypEPBqN3VI2Ly40YAZfi45In7mHDPEo0bwdWgYP5rlm4TrwOkU88WhGnt2iSMwEZu
 LoWU6jF9V0ZSUirtyygUqpeFi0JxVpq9iMQMHw5gitM1ywnryd/2D+iLnHdZNYXnYJUV
 +g/A==
X-Gm-Message-State: ANhLgQ0PeYADit5iZ/mRqBGMZjKsAKsfP9VUFkjh7+4WFtZEU4FrQCvr
 P3VdsZa6q90Us1tCWCLP1LlEUg==
X-Google-Smtp-Source: ADFU+vsgBkVQD0dLBecTfEbF03CrLYtLtKVzW7GOc6eWIzGL7RcvC5sthhgOlU9YtJ3O57BeRs1mGw==
X-Received: by 2002:a05:6512:692:: with SMTP id
 t18mr170820lfe.212.1582822328230; 
 Thu, 27 Feb 2020 08:52:08 -0800 (PST)
Received: from jade (h-249-223.A175.priv.bahnhof.se. [98.128.249.223])
 by smtp.gmail.com with ESMTPSA id m14sm3129755lfk.7.2020.02.27.08.52.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 08:52:07 -0800 (PST)
Date: Thu, 27 Feb 2020 17:52:05 +0100
From: Jens Wiklander <jens.wiklander@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] amdtee driver fix for v5.6
Message-ID: <20200227165205.GA7926@jade>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_085213_347681_533E7346 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: tee-dev@lists.linaro.org, Rijo Thomas <Rijo-john.Thomas@amd.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello arm-soc maintainers,

Please pull this AMDTEE driver fix for a memory leak in one of the error
paths of amdtee_open_session()

Thanks,
Jens


The following changes since commit 11a48a5a18c63fd7621bb050228cebf13566e4d8:

  Linux 5.6-rc2 (2020-02-16 13:16:59 -0800)

are available in the Git repository at:

  https://git.linaro.org/people/jens.wiklander/linux-tee.git tags/tee-amdtee-fix-for-5.6

for you to fetch changes up to b83685bceedbeed33a6adc2d0579a011708d2b18:

  tee: amdtee: fix memory leak in amdtee_open_session() (2020-02-27 16:22:05 +0100)

----------------------------------------------------------------
Fix AMDTEE memory leak in amdtee_open_session()

----------------------------------------------------------------
Dan Carpenter (1):
      tee: amdtee: fix memory leak in amdtee_open_session()

 drivers/tee/amdtee/core.c | 48 +++++++++++++++++++++++------------------------
 1 file changed, 24 insertions(+), 24 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
