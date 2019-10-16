Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5637D8D13
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 11:58:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OFGrT8Ot32h4R5N9sjW3bA/tbSmO37LEoKcma4pL2zQ=; b=qMcrfftdE9lLHE
	E/o+9voryeTZ+R3bFZFTJ8Qmvcp5LRzYziGEB5ZGl2yv0DKLdzFhlYmy4ZkaMgS+Bkl25/0nq536m
	2VqQG52KIfdru/zT2JCJas5eIAC26+S+P2b42l9obJSv8mOmOlSgN6LVC3ZxIwkLBH/FadQzU3lEL
	0Z+oc5zJKSlGPOxlHzXxenTePgiW8jrmRmRX1VlLexY1bM5u3BPmWLkPTgu1cAac8q/RsYQVjAEmX
	mh4hOFzfAExIIvt0CkmRyGlbL1Oqo4a9Y0vyDnhRd+Sp2Mfs6NRvaoSnJ34Oukx15prQBSw5Dr3+K
	jqjCkz8QwYFWrA4M1WPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKg4A-0003Qj-HO; Wed, 16 Oct 2019 09:58:02 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKg3z-0003QQ-FP
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 09:57:52 +0000
Received: by mail-lf1-x142.google.com with SMTP id a19so4036914lfg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 02:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=XmkE9WlFKI8pyb3SJarkshMXBgc4RxOdMIxQgz3kh30=;
 b=E3TGfy7xP24jXUdwFV+Nil23p+/H3OaGslr52g0fdf5RJs0BFr3EBxzosDTpxlaHcJ
 gfHyVmxK8W0dmqbA+VTMhGVspJtZU+yGCqauOsxbZ9wEnp7wwNMhi1JLeSL2q/IBv0O5
 9pBm9Z7E6JX3/1ZeiST1uEPzS5BuwnNMMrpu8wsrfqLh/6iK5WScbIOOHJMtPYxtUaKU
 f5gstHFXf14SFIK2k8HCHwnZAH8QXLkwl4e8kYpGnMXtc4ue4zSawj9pAKFWtoUMp4sn
 0OpOsxH9L1PqIQY1h7f4HAOk4HkaAV9HMx2EozQaLhk9zULIhib+lMNk0aWLd8ilpJ06
 KCww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XmkE9WlFKI8pyb3SJarkshMXBgc4RxOdMIxQgz3kh30=;
 b=NpQCvsneXXYEThSSZ2mNEWg/kOguSaKsLAXDgNFHLYjD+CqIQyTcochQZqmwJML8p7
 +ED07Z5J/kH5fLQ1e+6gkwKz3Kf+MoZYU7mC8BXkkdQmEAopZqsKVc3ZrXanMPX3UJwx
 2vm97ngWBR/1aB1eFjdD1MvF+IB+EddvC9bbeXIaOFdJRQ8fs9zHGkglHEu/BrzMt4CV
 CSzJrV6ZYbcGQ1enj1ynN0S4lbhLI8ojplYOiRxcLcpAjie0TBB2TkZafU1+fU/ohGOf
 ZaHXFZZjA6GbQajQcEyt5skUwRdjeypzwQaCmaXVEU75XmvidaY1wM529P7Tc7qUpbAh
 ei8Q==
X-Gm-Message-State: APjAAAUfsboClL1S9UEhvVZU7hhuV87nsXTMWrDozLQ/SFmS1j8Y7TTW
 5CsuxwaD7G/hcNK4iZkCDdE=
X-Google-Smtp-Source: APXvYqyByOg+IfsgQBVPxlMuMlhGelXgSpoJEbecz8DeWG44lbDSy7leAjZbMdYWT8OxVRJkL8+zWQ==
X-Received: by 2002:ac2:4830:: with SMTP id 16mr25588588lft.35.1571219869589; 
 Wed, 16 Oct 2019 02:57:49 -0700 (PDT)
Received: from localhost ([78.133.233.210])
 by smtp.gmail.com with ESMTPSA id h10sm6016603ljb.14.2019.10.16.02.57.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 16 Oct 2019 02:57:49 -0700 (PDT)
Date: Wed, 16 Oct 2019 11:57:39 +0200
From: Marek Bykowski <marek.bykowski@gmail.com>
To: mark.rutland@arm.com, will.deacon@arm.com, pawel.moll@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCHv3 1/2] perf: arm-ccn: Enable stats for CCN-512 interconnect
Message-ID: <20191016115739.0d5d2272@gmail.com>
In-Reply-To: <20191016110612.17381ad6@gmail.com>
References: <1570454475-2848-1-git-send-email-marek.bykowski@gmail.com>
 <20191016110612.17381ad6@gmail.com>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_025751_513917_6BC1F1B7 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [78.133.233.210 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.bykowski[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add compatible string for the ARM CCN-512 interconnect

Signed-off-by: Marek Bykowski <marek.bykowski@gmail.com>
Signed-off-by: Boleslaw Malecki <boleslaw.malecki@tieto.com>
---
Changelog v2->v3
- Correcting copy-paste typo: this commit adds compatible string for CCN-512
  and not for CCN-502 which has already a support for.
- Now *for real* change the subject to reflect where the driver got moved
  to (drivers/perf) from (drivers/bus).
Changelog v1->v2:
- Change the subject to reflect where the driver got moved to (drivers/perf)
  from (drivers/bus).
- Add credit to my work mate that helped me validate the counts from
  the interconnect.
---
 drivers/perf/arm-ccn.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/perf/arm-ccn.c b/drivers/perf/arm-ccn.c
index 7dd850e02f19..b6e00f35a448 100644
--- a/drivers/perf/arm-ccn.c
+++ b/drivers/perf/arm-ccn.c
@@ -1545,6 +1545,7 @@ static int arm_ccn_remove(struct platform_device *pdev)
 static const struct of_device_id arm_ccn_match[] = {
        { .compatible = "arm,ccn-502", },
        { .compatible = "arm,ccn-504", },
+       { .compatible = "arm,ccn-512", },
        {},
 };
 MODULE_DEVICE_TABLE(of, arm_ccn_match);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
