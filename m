Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE15CD357
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 18:03:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gZgWj+/Qn8xkvOxoUaWbMxioBQmSg3KgFdlbuPv2HOg=; b=huYrUzTFG+nUDY
	nkgLdlRku19emJ/sXohnh/S7fASPxO4vJc7FqR9iyoePgNrrbUeC6Jy4etn/Pq4kJWtab0+XYC9EI
	4vrSFe8Z0lLYEiszxqjAUMolUp3mZO1Oi8xyZEqirO970X3te0042dYAhvsMEUfDqeTi6joDYN1x4
	G7vAdWbFgb1RYu6mgF0zy6lpWDjZglZQ9Hpv8wllaCsNPXwSgHvBsavvHFZMKYdxgbfCQNP4+eigL
	3HH1OxqwHgqdIiJT3MnH5wEuOvFsRl9HD8m7bcWRVprUwwb7Ss9KnB1/J/RwjWYDUSmDmXJrAvurn
	uAoxBN6VrUp9JezFONzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH90W-00053W-Tl; Sun, 06 Oct 2019 16:03:40 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH90L-00052f-Ui
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 16:03:31 +0000
Received: by mail-yb1-xb41.google.com with SMTP id s7so235216ybq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 06 Oct 2019 09:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dVq3A/TrWA22YphYYB+8No5n6QtHAxN2b6l0mk2+kwE=;
 b=El+CWmCQb7R1fo1oaYIeiyEHx3GBZV4IoBkFhd03r6gfzUl03znZ2gdd9tCnotz27U
 qf720XYBzApe7w5zHR9EQ6v6qxaoiJ5P9Fv4DLS63DpPZMaPPr63LQSba6an/X8SQW1F
 wesEJwGo4JmAzqcHtXkfzFjqWqLwiPIGkfiWAQEEVWIXy0KiwgPiID4CLh8oNGf2QE4L
 oMnBwWRUXXmq8b/G9vNjukYF3TjiQYfjtZ50CTj7AM+lZKrKH7DPJ32tDdThMa2rkBE4
 QZ5fEmkYrXC/KK+7mWFL8+mM9dUFjPx2IhQ2uAZKSely5VF+4GYckmZy2jflNlF8iB42
 qfTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dVq3A/TrWA22YphYYB+8No5n6QtHAxN2b6l0mk2+kwE=;
 b=ThBuFRmlVJR3cm6ATgHDgh5Q6aIp19JhhoElmYh9uf06cxua5rOJnB5KJlMHXenzYl
 2BtcKstfTlk7UP2UobynETQEewQjK5iO2GjHIaJiNfyBeCDSWQe5BzkXamgWovn7qTiE
 TjXZ/AXBT8gTrlrHYHG0jj0b78a4M6LzX6S9I0/hR3pvPClO5+2wJUhSuByHtz/6puCV
 MB1uOudo14KOpIN2DQg/u1wHxeEJ6BCfkmbmsQMuPGQM0oTLYOOASxo/RYqiiWgasbYU
 tymRhtasFR7U7gR9q2s6AnD2GkHWJiUUtTBg5SOu8Ws2nlwGkaSOA6AbNDRVrtTxdevB
 FpUQ==
X-Gm-Message-State: APjAAAWtfyqPtBhqBL0VtX5Z1ge018+abko6eRJ3TW6WXi/YMZhhD9Ge
 Pra9P5S48id9UizwVT5Ik38=
X-Google-Smtp-Source: APXvYqyT7gjrdIuAXN+Bwn4RKda6PPR1sKi1ETOlqbj7vb1Sy27HtwuzkOxhz14rXqUdFFOvXtIc3Q==
X-Received: by 2002:a25:ab21:: with SMTP id u30mr3900549ybi.143.1570377808701; 
 Sun, 06 Oct 2019 09:03:28 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id y129sm3341816ywy.41.2019.10.06.09.03.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 09:03:27 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@kernel.org
Subject: [PATCH v4 0/2] Simplify count_read/count_write/signal_read
Date: Sun,  6 Oct 2019 12:03:09 -0400
Message-Id: <cover.1570377521.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_090330_011092_FCD43021 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: benjamin.gaignard@linaro.org, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, patrick.havelange@essensium.com,
 linux-kernel@vger.kernel.org, William Breathitt Gray <vilhelm.gray@gmail.com>,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 david@lechnology.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes in v4:
 - Rebase ontop of ti-eqep introduction patches and update ti-eqep

The changes in this patchset will not affect the userspace interface.
Rather, these changes are intended to simplify the kernelspace Counter
callbacks for counter device driver authors.

The following main changes are proposed:

* Retire the opaque counter_count_read_value/counter_count_write_value
  structures and simply represent count data as an unsigned integer.

* Retire the opaque counter_signal_read_value structure and represent
  Signal data as a counter_signal_value enum.

These changes should reduce some complexity and code in the use and
implementation of the count_read, count_write, and signal_read
callbacks.

The opaque structures for Count data and Signal data were introduced
originally in anticipation of supporting various representations of
counter data (e.g. arbitrary-precision tallies, floating-point spherical
coordinate positions, etc). However, with the counter device drivers
that have appeared, it's become apparent that utilizing opaque
structures in kernelspace is not the best approach to take.

I believe it is best to let userspace applications decide how to
interpret the count data they receive. There are a couple of reasons why
it would be good to do so:

* Users use their devices in unexpected ways.

  For example, a quadrature encoder counter device is typically used to
  keep track of the position of a motor, but a user could set the device
  in a pulse-direction mode and instead use it to count sporadic rising
  edges from an arbitrary signal line unrelated to positioning. Users
  should have the freedom to decide what their data represents.

* Most counter devices represent data as unsigned integers anyway.

  For example, whether the device is a tally counter or position
  counter, the count data is represented to the user as an unsigned
  integer value. So specifying that one device is representing tallies
  while the other specifies positions does not provide much utility from
  an interface perspective.

For these reasons, the count_read and count_write callbacks have been
redefined to pass count data directly as unsigned long instead of passed
via opaque structures:

        count_read(struct counter_device *counter,
                   struct counter_count *count, unsigned long *val);
        count_write(struct counter_device *counter,
                    struct counter_count *count, unsigned long val);

Similarly, the signal_read is redefined to pass Signal data directly as
a counter_signal_value enum instead of via an opaque structure:

        signal_read(struct counter_device *counter,
                    struct counter_signal *signal,
                    enum counter_signal_value *val);

The counter_signal_value enum is simply the counter_signal_level enum
redefined to remove the references to the Signal data "level" data type.

William Breathitt Gray (2):
  counter: Simplify the count_read and count_write callbacks
  docs: driver-api: generic-counter: Update Count and Signal data types

 Documentation/driver-api/generic-counter.rst |  22 ++--
 drivers/counter/104-quad-8.c                 |  33 ++----
 drivers/counter/counter.c                    | 101 +++----------------
 drivers/counter/ftm-quaddec.c                |  14 +--
 drivers/counter/stm32-lptimer-cnt.c          |   5 +-
 drivers/counter/stm32-timer-cnt.c            |  17 +---
 drivers/counter/ti-eqep.c                    |  19 ++--
 include/linux/counter.h                      |  74 ++------------
 8 files changed, 59 insertions(+), 226 deletions(-)


base-commit: 0c3aa63a842d84990bd02622f2fa50d2bd33c652
prerequisite-patch-id: ebe284609b3db8d4130ea2915f7f7b185c743a70
prerequisite-patch-id: cbe857759f10d875690df125d18bc04f585ac7c9
prerequisite-patch-id: 21f2660dc88627387ee4666d08044c63dd961dae
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
