Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A091D012
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 21:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0WwmFq0+Pta7gYcYDgMYHh4Dj96P3Gz9hsTFeXzLZZE=; b=CkG
	uqxIxShIINMIQnUGGNax0cKqZ9YrkrSowerjV54SYLVkkUZYd5xA4SAamTDmEhhYGH0+4c77XnVKg
	IY0qsrzM79NVA/oz7JVMNnjGNKpYEKVYbExrV/PumJMZRIGYfX3dFymQ8KIOm54FDo5wiZYIwqokK
	mZ89qfox/sgXM0tuFHr8KvyOEAMe9xBFCyQ9WaDuN+ZBQ/ivQzFBjSNSYtAHLXOMdKrF+99SiZD3g
	zat+Mq2FG12jXpusw5ieIr3hdPNAOrE7tsXyHF2/SE6fKzjkGbWryWirzQzBhma22PACC4CZHnOM7
	Pkytt3nGh5SpNlPftQlyLp7wtGNzraQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQdHr-0006H0-2N; Tue, 14 May 2019 19:40:31 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQdHi-0006FX-Dt
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 19:40:23 +0000
Received: by mail-pg1-x543.google.com with SMTP id i21so58134pgi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 12:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=/ap6CBGAbsuOfa5NsSp7kFc4wsmDe2lgjCxH83C2M+4=;
 b=EQJoRr+MnB5VxaU6oLwKWXlZJR7CLJDLGQsAW01k8/OSuVrXlSdS5WneDUVMjQyW0b
 1e13foRTKUlh+7wh7bajKaFrxkcsLI9F+REbeV/ubxYGqxDi8QlQtmnNiaJyJIqlxoUp
 KL3Otajpyuxcq8VHKr8BGdtw2PBsIa+uH9dYleEn+E9OFo/9GNKzz1nSdeWL2YLaZb01
 zmnTgkYXzGpZ/nVlvZu3c1kCw6nJ4d0Cq9sm091q2ApPTD+09eY9ieMxiHb0ta+vvLJB
 gVvLyiXsFA172OEe9n4waFmu/1t1stmchLkMZb5G8ZONVoIWI6ZCqqe8HeIGHR8GBn1z
 iB0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/ap6CBGAbsuOfa5NsSp7kFc4wsmDe2lgjCxH83C2M+4=;
 b=b4Ic++3gH+1j67qOTVYQwzEH0CuCtFziS9VAOz8GwK9zNiYCYRODzj4cclU9mEorKy
 2P33eS3CdJukZsMof0/MpVxNLctlRrB3L8UVN7+yW/TUFvPT90tLWkzRpRgEg60U+9l7
 l6sOMEnSCBCXyL05yprBOeN1qznU7QVVj772bHOWH8VHKFoPIKNWzxOBG8QlhbYk3RKo
 GFpsSRpv1rfELqNjQTwEpPpvoBDzUyeuutywYUJ2DTgOqFkGL5z836OSZKoD+GjZ/VNv
 CI18aSkAi8Y+vSnxTD571RxVKj7OoN5ikqEwN0poAVI3/4BMYB/ew14vFGQGp77yw+P3
 1Ejg==
X-Gm-Message-State: APjAAAX1fw2Y2cO55x6QgBlSDHC/yR0ZsYsyxt2Y6pfl3qGxt9MG7Bs6
 3qPQVeXi+tUziVJaVSZunla1pExta5Y=
X-Google-Smtp-Source: APXvYqxroE3EA29hq8SVczIgPpqEJdhfyRvfC+3uLaDDSWhogRIW346vSZ3De6oluRTLGIX3ojgFAA==
X-Received: by 2002:a63:ed03:: with SMTP id d3mr39645363pgi.7.1557862820722;
 Tue, 14 May 2019 12:40:20 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id w66sm5791196pfb.47.2019.05.14.12.40.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 12:40:19 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 0/6] coresight: Fix snapshot mode 
Date: Tue, 14 May 2019 13:40:12 -0600
Message-Id: <20190514194018.23420-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_124022_479886_B3FCC4A9 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: suzuki.poulose@arm.com, alexander.shishkin@linux.intel.com,
 coresight@lists.linaro.org, acme@kernel.org, peterz@infradead.org,
 mingo@redhat.com, leo.yan@linaro.org, mike.leach@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is the second revision of a set that fix miscellaneous problems
preventing snapshot mode from working properly when CoreSight events are
used.

It applies cleanly on the coresight next branch[1] and will be posted
again when 5.2-rc1 comes out.

Best regards,
Mathieu

[1]. https://git.linaro.org/kernel/coresight.git/ branch next

Changes for V2:
* Drop requirement to make the perf AUX buffer the same size as the sink
  buffers.
* Re-worked the user space algorithm to find '*head' and '*old".
* Fixed typo in changelogs (Leo).

Mathieu Poirier (6):
  coresight: etb10: Properly set AUX buffer head in snapshot mode
  coresight: tmc-etr: Properly set AUX buffer head in snapshot mode
  coresight: tmc-etf: Properly set AUX buffer head in snapshot mode
  coresight: tmc-etf: Fix snapshot mode update function
  coresight: perf: Don't set the truncated flag in snapshot mode
  perf tools: Properly set the value of 'old' and 'head' in snapshot
    mode

 drivers/hwtracing/coresight/coresight-etb10.c |  21 ++-
 .../hwtracing/coresight/coresight-tmc-etf.c   |  28 ++--
 .../hwtracing/coresight/coresight-tmc-etr.c   |  19 ++-
 tools/perf/arch/arm/util/cs-etm.c             | 124 +++++++++++++++++-
 4 files changed, 165 insertions(+), 27 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
