Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A251A4490
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 11:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eQJeIiiIdutSClIqeLM5n5jcyltRu1+TE558U/i736s=; b=flmJeb5T8klwlUrZK+hoEbpo5/
	NzNFvZ5vlLCX87DByJ8perN+3f8qqNq4e/Q9ZTAk0TOlgVIOJ+b5OAdhsLkGZV2OqS3+5Pwfh1tLn
	OTvKrFTGy7BuOrtrtpo/yNQeyMJsFzM1u4QAVULqQZcr82Q+hEFZRP9XAj6av8gssBzZr19D4BP5t
	zFAmUGsCP6fv+fSbzSfX7+NpHjPMjI+H1N4DpBCWQw1181UbnDBuurdVXGrr8AujSXviQ7Ah0WI1J
	lec/AFrDG1+axy9TjE2ZKHyK26kAQMiz9YmcB2IDobTHgDf9RmJpaDAQOCsHFMqUieguT2c00MLm1
	09NtqsqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMqCV-0003iJ-F7; Fri, 10 Apr 2020 09:43:51 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMqCQ-0003hu-1m
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 09:43:47 +0000
Received: by mail-pl1-x641.google.com with SMTP id m16so515462pls.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 02:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=F8UqKiWgsSHiMoGQyCyV9GY+lAN74tpZIBErevA5oYw=;
 b=XgBxphpJWngdfKxnfX8bAaKwdG2vny8asgZwyRWTHV/jfBABLlC2MHjXHJy7fU6dKZ
 mSEouQatBheEvxHnSI8XN9x2dDyvuvMDKlJWmt3lT4v2+AdcFTIe7hls6zTCik+qMjHP
 e8NgjTFGyq7/WP3uQ0i+o0QY6TWLN0AUMfbtMB96kwfnHxJ9kOo+WJrUi0HxkluS/iCt
 s0Ki/JHJlpIALiiwpMJR4NMUfAicgZBOaiOQnOybPUrGHWIQBpT7DJfgQotRoV/XNPPU
 2Q0ljXPcL3T2bdrJtHEF/Ysiz5SWP513TgiUOXtqX6rnZTqrfb+CZ8bJTHkNJtLXC3sa
 2UiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=F8UqKiWgsSHiMoGQyCyV9GY+lAN74tpZIBErevA5oYw=;
 b=TJ1XgBiThmAqg7Vto/BjYnQXvjzStkR5mlhJKg/Z6Jz/bMiOzDb3IbKCdzEPTYjlZ6
 BrqNL1D2cNvFwtDtEo2bJY7Z2N3K9tZvDBkUd4p6fBOMLJKa0fyOtvXkL8tk52XmbBLf
 bE5ByCx5/q4+lmqGfXMFIU3BiAVmZIy1NMa2MOm/5Q7qbOn3gD/ksHhaVWEElFothQVQ
 WINaitgx91m9SqrPltf7U5HHo2Wnlj5G1/KYPAsa1bsOQRrUgnpfDoG8sykco9NfY96I
 /T462u2WUZsa/BkLYzdIiIloJQ54yAq/3FA7qQeXHq/Xj7gY6Z1Aa2dvBNe0ikCgDDXy
 DSeA==
X-Gm-Message-State: AGi0PubPQmVZ8dFN+D8XO6rjkOgkjNOy6nfnGN4LySzrrHRtgi2auQjM
 z5yXwff5IkymydYSQR5vMV8=
X-Google-Smtp-Source: APiQypJ+LbV+D+G1TrlHUJ3PKuk1FxsEEVKE0QOuRP0/L2bFIcyjzftDIsBNpq5Oyg1lvchBoRyGAQ==
X-Received: by 2002:a17:902:8d91:: with SMTP id
 v17mr3700951plo.53.1586511823774; 
 Fri, 10 Apr 2020 02:43:43 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:991:ccd7:9dbb:79c0:fda5:adef])
 by smtp.gmail.com with ESMTPSA id bt19sm1305507pjb.3.2020.04.10.02.43.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 02:43:43 -0700 (PDT)
From: Aishwarya R <aishwaryarj100@gmail.com>
To: alexandre.belloni@bootlin.com
Subject: [PATCH] iio: adc: at91-adc: Use devm_platform_ioremap_resource
Date: Fri, 10 Apr 2020 15:13:09 +0530
Message-Id: <20200410094324.4334-1-aishwaryarj100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200409151125.32677-1-aishwaryarj100@gmail.com>
References: <20200409151125.32677-1-aishwaryarj100@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_024346_091859_EE082E81 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aishwaryarj100[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aishwaryarj100[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Kefeng Wang <wangkefeng.wang@huawei.com>, Lars-Peter Clausen <lars@metafoo.de>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Thomas Gleixner <tglx@linutronix.de>, aishwaryarj100@gmail.com,
 Jonathan Cameron <jic23@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use helper function to simply the code.
The devm_platform_ioremap_resource() helper in the
kernel which helps to make code cleaner a tad by
replacing few "boilerplate" lines of code with a single line.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
