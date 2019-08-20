Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7019699A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 21:42:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2M0KnDPqzoj74CazVYRnqvP8XIjFswkvOrLZ/kMtWdc=; b=EPW
	dC6jgrL4LtubDf0jOD7xpuMd9eQZoAzLEZppkrr79rEcK3w4IXHipEDjdTTPojSdXJtdoM6INjQE4
	+bNTK44aFXQbUPmzJt0abOVzVOxdKEpz6xSoPim1rV/avEXqqth5g65F8+LLLChHx3LTQbwyWhTuN
	dBNCcpbpfjxVLFRJtpGLjEoKaWmUsMpw8J0rDobRYRS+Cbh3f29CkwVL0zksiF+Rj9WgJx0FFhIjH
	FdewcT72VZ4Xe0qSdB8v+elHBCGvBZ3qZg6Dz9JG1DtAtKEg90sRWdvNVedfc8gJi+eTxlQsDxkZE
	yRWvDWAbNw9l7U6d5Zase8eJA3RddHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0A1A-0001XT-55; Tue, 20 Aug 2019 19:42:08 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0A0z-0001W8-7K
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 19:42:01 +0000
Received: by mail-pl1-x643.google.com with SMTP id y1so3247690plp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 12:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=UI66hzWylG20Y7awZI5TnlXQGbyJXHQC2a9xVZvYZQs=;
 b=CfNRhXZgw7v3HkqFDs5KEdLk7OBymC3KkucSyI1M4fdPU4yb3I4SUhCOsYHgV3kYTk
 XqccogIzr84Y1kfqX9R2emRVz5Kx+mxxMEZbRWwG0THcR66gjFn/mCID8uwnxnSmqcpW
 SGx/50rinZisQg54omFsJEbS2d13Z2eQb4pCMzg7veZIZyBgjC28tN424iBR9EQhbG02
 J7bx0wjelf9kIWHCC8SrDDjfrZ74hI+o5ERXF2Yzo9SgvOAssehBkdeN/MfjTAhQCwRA
 l2Zpbb9s6T9ScLGBdkooY17p/RDbHTfodKxk7ScUHOfS9OtFGEBNfYfCNgPPylZlpXRU
 zhTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=UI66hzWylG20Y7awZI5TnlXQGbyJXHQC2a9xVZvYZQs=;
 b=JfyaWkGu8lKG6lpmnobc5Q2uPSSDNSBy/dUSgGb9aqpqNiKqAhMCiqEyPTceDsWsLJ
 l2OmsOd3fS5+zkJ2jH7NwYJ33MlXlT/jHw7WDZP9xVUgkIhgfahWDhfst3aduZNGzvRO
 7lMBYqoZA5MFwgqrGUvj7CkXorLRICoJpdp0jksNeJBjyvZaW6P7o13Zw7y4w02xkuOJ
 hn2SHT8VI3VKpY8wnqLzAokRCC1vitUgTP2+xsAJu5KmdEeqfYItZzOa/p91gq1iKXW/
 VGEellisQCByg+8hldf1095qTk+CS3frkedF8W/bfU7/XtXvJxtZDUNxZhpf1538Qyp/
 zgnw==
X-Gm-Message-State: APjAAAWCmyPi049YOlStgrBQqHHEaIdzbzEVQeNSoHQWCzPjAuvQ78H+
 +i4rOW6IYGk33s6XlW0FjzrjDzahWWA=
X-Google-Smtp-Source: APXvYqzKQnL3twaUFQktoUUF2QNcp40fFQATr7ZKpWII+SbjsBlhBJ+CDZXNrw4FYkqKrbVKfpAbQw==
X-Received: by 2002:a17:902:581:: with SMTP id
 f1mr2460157plf.246.1566330116659; 
 Tue, 20 Aug 2019 12:41:56 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a15sm24220671pfg.102.2019.08.20.12.41.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 12:41:56 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/2] Coresight: Fix for v5.3-rc5
Date: Tue, 20 Aug 2019 13:41:53 -0600
Message-Id: <20190820194155.28992-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_124157_289730_8A5F4B57 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Good day,

Please see if you can add the following fix to the current cycle.  If
you think it is a little late I'll simply lump them with the set I
have for v5.4.

Applies cleanly to your char-misc-linus (d1abaeb3be7b) branch.

Thanks,
Mathieu 


Yabin Cui (2):
  coresight: tmc-etr: Fix updating buffer in not-snapshot mode
  coresight: tmc-etr: Fix perf_data check

 .../hwtracing/coresight/coresight-tmc-etr.c   | 26 +++++++++++--------
 drivers/hwtracing/coresight/coresight-tmc.h   |  6 ++---
 2 files changed, 18 insertions(+), 14 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
