Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F1F1567CE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 22:25:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k0AKk/+Z3CRxocfDlcMQnXypwoQbO1IQtwAFf6E7/As=; b=Y5rf2cmXEbA9RG
	goP8zmxhe+6lm4PnNHW1W/KNIL2R2yQYqbXHbWEv8HGHS3JGLTNukKlAoh/J0IvbL7tP6YDhjKgAD
	97gy5qocJ+nE6RInLken3PIqB3N0U+8snIhLFfCh735dYVmC9hdx2If7sEzssyG+Zvmb17mxFZ8Fq
	J3PTcczW9RdBtr+ZfKimL0dklDhmScovsSPkipDQbPFdEX8KBlCkLpKjnRHjJ3e81CMLglaka281a
	YHhcK+Q1NHDDjFhrE7okJ377XLokk8ZmrMiIa2P6lShhslVEZlgWNttHaO6grcS3ZOguYc0tL3Bqb
	vEZnbJFngiDqIdUeFBDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0Xbp-0002l0-TG; Sat, 08 Feb 2020 21:25:49 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0Xbg-0002kV-U7
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 21:25:42 +0000
Received: by mail-pl1-x62e.google.com with SMTP id ay11so1218092plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Feb 2020 13:25:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8lA4iqONRNqA3ySFcb+v4bckKAK+PELt3278196lhaU=;
 b=F8PJ4CXgSzEFNpED+Uq4lHJM+GiD5a5m1AFpWK4ATJTQ+1yDFeJQGPfinnPqJHSW2y
 5gyDf4qcc+xXlf1PN/xWr9HKvtbRDr2OZ57XrNZRn9JyOPpYs02vijcAWJ6Om/9MIe26
 fbi8llC7vpTszGNePk8qCqfk+8zz0Bj94KBsXNLZc3JaPH+DAtgsQgPfu4+QvwsgmvLh
 45syekHaWEdM/aU775IG33TdQz5+qhTfPCdzvreTCTAlploNfwT6e4dowm0htidv76uy
 nWuM4e9dSAOXbW8k95n51R2ieyVbrEQ2TTetlf0ufZIl50oZ5BSyoKVBoc19UNTvZQqi
 9tug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8lA4iqONRNqA3ySFcb+v4bckKAK+PELt3278196lhaU=;
 b=tfSjwNwXeTeCMdqM69NUqkOaD+MWAGFqYaRaMeQQXu4tReVnYtGXUkOO3JLySYzmm9
 V92qrgW4/2X6AWBmr2TaFH+CUJGY0Kk7uwmCmoKLTbisNmDdGpzYWv4KmjtepIWq8u2j
 VkGduFQWZQlh5Cp5It64gooPyib5d+eWYZ2tWRauHS2IkvswSjVAJ2qgnnRiKr+x4RWM
 hfcHQMeREjyAUhiDakJcy0RpqLDGtaynpk8jhcGsfSom/hP6xopoPg/CUtyh4WfsCqva
 2UAR3OyKLY3G6QmLNMdllavMhOiMEe7QHkyToZU/GqoAWj0VcGLS9MvZr0GV4DtVGJGU
 g0Ng==
X-Gm-Message-State: APjAAAXRu686SgASo1o2HFYlzUdZbRtcOar+r46Aue0hADYoPZa8+2vb
 eygf3b8CNMdL4QONJ0PRwHVb9Q==
X-Google-Smtp-Source: APXvYqysnFLWHFoHmkxAgiSMpKv/1WJecVJBkwN9dT0+uE9ubFjRLxwl2VQ8HTqcGQILsMsMwnmxiQ==
X-Received: by 2002:a17:90a:bf0c:: with SMTP id
 c12mr11427402pjs.112.1581197139469; 
 Sat, 08 Feb 2020 13:25:39 -0800 (PST)
Received: from localhost.localdomain
 (99-152-116-91.lightspeed.sntcca.sbcglobal.net. [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id a21sm7126831pgd.12.2020.02.08.13.25.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Feb 2020 13:25:38 -0800 (PST)
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL 0/5 v2] ARM: SoC contents for 5.6
Date: Sat,  8 Feb 2020 13:25:28 -0800
Message-Id: <20200208212533.30744-1-olof@lixom.net>
X-Mailer: git-send-email 2.22.GIT
In-Reply-To: <20200208112018.29819-1-olof@lixom.net>
References: <20200208112018.29819-1-olof@lixom.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_132540_998206_A209599B 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62e listed in]
 [list.dnswl.org]
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
Cc: soc@kernel.org, arm@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

I completely botched the last generation of pull requests by
mis-generating them, and I also missed to push the tags to the server.

Here's the fresh set. Apologies for the noise, please merge.


For anyone keeping track at home, what happened at my end was:

We use a script to generate our pull requests, and it's ran against a tree
that is mainline + the merged branches. The flow is usually to merge in
a branch, note down any conflicts needing to be resolved, then generate
the pull request. Or, sometimes, I do all the merges and then generate the
last pull request, reset the tree to HEAD~, second-last pull request, etc.

I completely missed changing the tree between the generation this time,
so every pull request referenced the right tag, but the diffstat and
other contents was botched.

It's probably time to automate more of this with scripts at my end,
to avoid these manual mistakes.


-Olof



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
