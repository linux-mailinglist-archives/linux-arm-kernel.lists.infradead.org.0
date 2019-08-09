Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 860DB8854F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 23:54:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OY4kny/2nguX1Hp1v6bORakCtqX5FS3YQpTVvQEFyAs=; b=CmTGdbi/Feg5T6
	SqfB+s8YC9/83hjbm5baaMrhvFL25CrzindkcrqcMlxDT16nilO58SGt5duqM/v+IKAnNrBEfkz07
	71L3ddE7UVxT+Fdu83HO3x3pypbe9qAYS0H8Lhz4y88Qa9nZ5zXbnrU6uaxcfJ0I9zHOJp5kzF75b
	NtuX188vwwcryCpK4lBbgsBEbhv/uNaRS8ahEZqd78R9Rzb5FDoah/Z1s1PakOi8sb8qNYKTZ963M
	5ZONhwliUdF1N0FTkZ4NTNS4hMeWzdnkWFwSGSNcK8bpz+hvZhF736CNftSEQRjh5zRuFTImSq4qw
	m9NU3OQTZGiJ4HpRGCPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwCqH-0006UR-Tn; Fri, 09 Aug 2019 21:54:33 +0000
Received: from mail-yb1-xb49.google.com ([2607:f8b0:4864:20::b49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwCq9-0006Tk-6K
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 21:54:26 +0000
Received: by mail-yb1-xb49.google.com with SMTP id e66so66577902ybe.19
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 14:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=ukb1Zqvwt96yrIxgQQEQnGVIiIApqgSGRVfi7T0+Jj0=;
 b=sI2djgBN6cPLMgwD0FGqCodfYe+k2IT9TjQoBlBsI49JY2viIrggDlcrgzYYHGjYuv
 dCplPLLlGoc6MiW0IJTBaJAZeST6XSCpDG7qNXVZZRWJvQ+XtzHk52/rz5t4m+1OTv8t
 Tolwd/s7AKIq2Ucg6/SJKB7WCo7YkZitZmj0kJ4bZd2c3bqW5Du2NiZVP0iyeMlT3V/t
 Tx6xw8eA4zePcqFZR8w9RWGk9EJLi8uvO8XtK0h9VLVjLcUoWPy1sER4J3gpNnAkyiFM
 VZYsCzHop1nGaWVd8OoRtnojc7C87FmqalWjuDGlVLyspZgF8GgYnQwhLBFt3/phdJ9d
 pgbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=ukb1Zqvwt96yrIxgQQEQnGVIiIApqgSGRVfi7T0+Jj0=;
 b=QuitVOjwfUW0uIw6UQUBgBplLwXszHGsnSJsCk6qnUHC3+h4mxN3+TynBgsAChDHAN
 +hEsgCwuTiZeGBghVjRimG2v5h7lo8iMhAg2JKba3hG1IumLJFkTqBV9zxsUrMfz3dfD
 njyUn3h+AIt7QyI7+58hUvoifkgaDRCz0sPXKdYhm+bawhYwKogBwQ9uoeXdePsw27Xg
 yn9xDZFJOC8UbtaCSRMk9lfTTTkecjddE++5N89vihzgFuXbVf7YUVtYNSpL4mUkteZv
 mxWH+m4rY1uAlemhkFu5F7xL90Zu6JOnSotIzepzn9tYua41yuPLfSDuRyScNlZ1dB3d
 DG7Q==
X-Gm-Message-State: APjAAAXdOV5JhJGOjhPn4UpXTHzbyCZ+7L5spx/GKALUQ5JjX0rZa3Cx
 1yptD9+/epLz/79PoWunqkSbluHDBg==
X-Google-Smtp-Source: APXvYqzOSbj5Dv3h2QRRXyCuIOpRQUiHLc3KigrmqvjmGhP4R9rKNj7f0N2Ktsha/T/x2su4zoXceRuVSqc=
X-Received: by 2002:a25:6302:: with SMTP id x2mr16178910ybb.6.1565387662988;
 Fri, 09 Aug 2019 14:54:22 -0700 (PDT)
Date: Fri,  9 Aug 2019 14:54:20 -0700
In-Reply-To: <c7ac79dd-c15c-6edf-153f-71dd8f754a93@arm.com>
Message-Id: <20190809215420.41874-1-yabinc@google.com>
Mime-Version: 1.0
References: <c7ac79dd-c15c-6edf-153f-71dd8f754a93@arm.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: 
From: Yabin Cui <yabinc@google.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_145425_262710_605CDB61 
X-CRM114-Status: UNSURE (   5.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b49 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yabin Cui <yabinc@google.com>
Subject: Re: [PATCH] coresight: Serialize enabling/disabling a link device.

>You may also want to protect the refcount checks below with the same lock, just
>to be consistent.

Good suggestion! I didn't protect it because I found other places using refcnt.
But it turns out they are not link devices.
I have uploaded patch v2.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
