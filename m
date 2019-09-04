Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DCBA7D9F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 10:22:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AAXMcekeTUs6uhdDlb7g1bY7R/qVJbbU/hBubhWGOxw=; b=lmwq8JGUJ5OhUK
	Hx4uAB6tFeKjKt8AqYQ401TnnsWBmLu4ZpgXjThBt2RnAkDdRdN1MuINuy2F3obOvpe2iX2RN6TNO
	5dW0eYFd2Z7AzdUW/b+w7VOXFMmADnKynfbhftX4b8HKwO8CNsKUXXsDdGqeCDDZ5bO2qWOYSGjnc
	wXu911fEj5PF/dW94nIw23E+uf7M2US61qdHcIxuf5vyc1y5UVbFEOQY1BEt18ApPpygBd+Xuzuje
	PFCRNGoOJs/9k5/4C/zKdXJG6hi92V9WbdtRhfZqJw9LiMwFU4Z5VugHTL4l50vBFczh1wMWqD9RF
	hJJ++3SFus+YH3EfvnJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5QZ8-0002Jn-26; Wed, 04 Sep 2019 08:22:58 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5QYp-0002I7-Cc; Wed, 04 Sep 2019 08:22:40 +0000
Received: by mail-pl1-x644.google.com with SMTP id x3so4094309plr.12;
 Wed, 04 Sep 2019 01:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=R+MTq1VS0iR1Cmy3+6Y5RTbLGGusOaeHEDjli8lEEug=;
 b=RTBHYoMusuZZ5AhgQVW4Ifku1G8VvN4Ll0zy023Lbai0cViQEH2bR6Iui/by5YW1Ap
 Q6aYgQSGI9o/EGk+Sn2VF2wxSMZqyDRoqmknxzQNcPNtlmHeghzyeCGm/q0giQ5NFWNI
 C1HvKXxbYbV0VHTuxz6/Ip6QnSNpNZ7ZMUOImib8g8ItRoRcH8mTzwGOHTTTOy2waQ94
 nO0BsM7b0Rma+caRCrzA2ZsNaEfBYIhVnamBuZcaQOilnxF5VtbynTkCur6tN8LvjwEh
 /KdfPBtSwEEHmECBR3CasdP57gyGVdxJVcyyG2tk4EHazua53hS5K8I6uuUcqLLB9kyZ
 BY0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=R+MTq1VS0iR1Cmy3+6Y5RTbLGGusOaeHEDjli8lEEug=;
 b=ZCQ4DZZOQ4fcQyKBpW7K0njqy2h2K80y2p9UhZjjQk0qR7kJor7p8UUJyLZsHMIXJq
 lYKFcqjPVlfc48wtwgqZ9kZrW0DJsfK4SOOvPfA0yPbosBdDe5BQhzEf47obrNqRJ28q
 AZzpMNOYUzJ3zekmJY8DyOeWUrgbi2JOz5/8EwZnZeuijI/rMC22rQItreUyyfTGqUSc
 03QtOzY7VT1zYAoZX70ig7c1B8NpHrnXzwC68jIphir0hSDJOIPJHWDLFGSH2YMe1W5F
 v7GICm9JalQ8DoSQeXDS853U2iYHYdHvp8/HNG7V0F2+ieION6HJalA1ZP6RKO7Gx31A
 rljA==
X-Gm-Message-State: APjAAAXr6EqbpoI4mZ0DO7oLNU/azd4RP9ugQdaIIvTNpjQ+qeMRmY2d
 tMXGN6O6l+tBsCv7W3J+VHc=
X-Google-Smtp-Source: APXvYqx1Bf1AOmUEnA9r1G5j3AiZRcryCIH6SYuoyG7V3crQWL4xyMzhyRlY+1SwI2QFZ3T3XLdMbA==
X-Received: by 2002:a17:902:8345:: with SMTP id
 z5mr41132525pln.29.1567585358436; 
 Wed, 04 Sep 2019 01:22:38 -0700 (PDT)
Received: from LGEARND20B15 ([27.122.242.75])
 by smtp.gmail.com with ESMTPSA id y8sm22025894pfe.146.2019.09.04.01.22.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Sep 2019 01:22:37 -0700 (PDT)
Date: Wed, 4 Sep 2019 17:22:32 +0900
From: Austin Kim <austindh.kim@gmail.com>
To: mchehab@kernel.org, khilman@baylibre.com
Subject: [PATCH] media: meson: Add NULL check after the call to kmalloc()
Message-ID: <20190904082232.GA171180@LGEARND20B15>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_012239_457756_426E4B8D 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (austindh.kim[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mjourdan@baylibre.com, devel@driverdev.osuosl.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If the kmalloc() return NULL, the NULL pointer dereference will occur.
	new_ts->ts = ts;

Add exception check after the call to kmalloc() is made.

Signed-off-by: Austin Kim <austindh.kim@gmail.com>
---
 drivers/staging/media/meson/vdec/vdec_helpers.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.c b/drivers/staging/media/meson/vdec/vdec_helpers.c
index f16948b..e7e56d5 100644
--- a/drivers/staging/media/meson/vdec/vdec_helpers.c
+++ b/drivers/staging/media/meson/vdec/vdec_helpers.c
@@ -206,6 +206,10 @@ void amvdec_add_ts_reorder(struct amvdec_session *sess, u64 ts, u32 offset)
 	unsigned long flags;
 
 	new_ts = kmalloc(sizeof(*new_ts), GFP_KERNEL);
+	if (!new_ts) {
+		dev_err(sess->core->dev, "Failed to kmalloc()\n");
+		return;
+	}
 	new_ts->ts = ts;
 	new_ts->offset = offset;
 
-- 
2.6.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
