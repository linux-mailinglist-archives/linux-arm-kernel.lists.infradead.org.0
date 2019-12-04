Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B5E112C4F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 14:08:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P4iNN2TECSgnhfI7hA4FES6vjqfK8oZj1r5B5fDBD9U=; b=WjYEvQ46+3I61b
	fwxjZCSOK1uWfoZOyW6L0MLUB9Gr9/38byq9Gdi3VbI1ouZx4fH1Ft861SeBqDYwJceNMGcqhWC7l
	cqe6XVWb9FOOWCVRfy/gvtKkjbKH65RQ337+VBcSRE/7xik8m3QV6nYBKqOGV2zYtZ0panY6p3W6k
	Dq2IHxU1SrzSsUzJT1eFpktUOOyUBbsY6fY5D7H0rBqaHI+JLH5H/X6kscey3HWjYE3iiB5z9kxdJ
	DEfIK4A5x29LAcC4mV5J10Dfr95814FAn5FgZlIbqYFjCyo1L5cNdQ+l7Iv/Par3ulpgISqHlDTjp
	r2KaACeKhvf8lDYmfR4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icUOR-0006vu-4I; Wed, 04 Dec 2019 13:08:35 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUNu-0006YG-0S
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 13:08:03 +0000
Received: by mail-wr1-x441.google.com with SMTP id z3so8555659wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 05:08:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/7IM0fv40hADv5GE+ySNRZnxruCXkFYwzWNw9KugEzc=;
 b=got+vM/4BLEJka9KYKG+DGIsI8XOzl2yBzrtfBCGzw7DRektRkAeHZ1SPa/bo4z5Gx
 raFW4UYxTzvqz/svRpp+8QGW1I4uYlQdMYxbnTpszg7y0IywHPi6LUaF/Tw8e3snAxIV
 fX4xlq8FwN0tTikt4LW8yIWzBMt36MrqGCS19avhSQm8Qy7tD8+dg0SYekK40ju9EAuy
 kfg+ji/CjJA9Ik8OjQ27GG/NB0nWbA66Dja06Es6rjT+466Jrc1vJqFi69LKjyImAhZc
 sEFFNnrWEahjSuxO+oen/aGcE5SPTEUYmol2tFGMZ2B+6lGzwg3hX7fYbpS1bK0MbRAN
 X8AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/7IM0fv40hADv5GE+ySNRZnxruCXkFYwzWNw9KugEzc=;
 b=eqXToSXWrlqYeoTMhLsBm7oP1NOlnnOwH7XjCP7yfff+H3QLGsvhygcwwZx+4n5dKa
 TU/yRDrCPbj9oAQmaZhncXoX2oWXkzDgV3FOR6apdu7n3vvhSTFGdMTkRTWV4s/lEJXH
 ApO508H9NY42vJcQkS+ttlILKB1B5kYDICwFGjkNIr9kI1JyEWL59gmLnnm55oJGqRoe
 xuEr66UJSExNRe+Np7IfmdMvrwxCJeoJ6A2TZle4mAcl12I2djrc5YrxmOJuaQZ3u2Gh
 wGdfBdVUjxTunJKdMdcKZ0vJSJzYGVVMQF6nf0ZQkt4tIJNW4OEoVEUSgmkjVws81T/7
 pbIg==
X-Gm-Message-State: APjAAAVAER8GnOM1IkpQTZBvAc1bdpB0j/qZ2kromBS+0oLlTZa+KXkX
 D3uufPI+Sf5u5RTQ49er0eo=
X-Google-Smtp-Source: APXvYqx+JJ7wzKgp89nig0jYQ/8cLqpqZ6rH+Nv69b2Ijv114+lAuxQoETrAKA7GgMu0DqC17nE7xw==
X-Received: by 2002:a5d:480b:: with SMTP id l11mr4057766wrq.129.1575464880292; 
 Wed, 04 Dec 2019 05:08:00 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id k8sm8181241wrl.3.2019.12.04.05.07.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 05:07:59 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 3/3] cpufreq: tegra: Fixes for v5.5-rc1
Date: Wed,  4 Dec 2019 14:07:53 +0100
Message-Id: <20191204130753.3614278-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191204130753.3614278-1-thierry.reding@gmail.com>
References: <20191204130753.3614278-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_050802_072526_328A60DA 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.5-cpufreq

for you to fetch changes up to 0fb438eed10ca13d212a5675363beb5a5cd721f2:

  cpufreq: tegra124: Add suspend and resume support (2019-10-29 13:25:29 +0100)

I had originally meant for this to go in through the cpufreq tree, but
I might have messed up the messaging, so Viresh ended up not pulling it
into his tree. He did provide an Acked-by, which I've included in the
patch, so he probably was assuming this to go via some other tree all
along.

Unfortunately, it's now causing suspend/resume to fail because the clock
driver changes require the CPU frequency driver to disable the CPU clock
before suspend can be entered, so it'd be great to get this in via late
fixes for ARM SoC.

Thanks,
Thierry

----------------------------------------------------------------
cpufreq: tegra: Changes for v5.5-rc1

Implements support for suspend/resume on Tegra124.

----------------------------------------------------------------
Sowjanya Komatineni (1):
      cpufreq: tegra124: Add suspend and resume support

 drivers/cpufreq/tegra124-cpufreq.c | 59 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
