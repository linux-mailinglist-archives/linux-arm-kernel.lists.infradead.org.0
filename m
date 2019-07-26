Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DCA75EA6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 07:55:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pO27ARGgcsgWvMeTC1fgiLuCloN7DraW6BbngIOh4Ck=; b=gNZjOnr6/y79X0
	i++HjLSdDEWzxBget/i9S2KAAZkrK+KFORBEne7d3UCww+7heFCPkpgp8DIJGryWvtDFIYfedwCUE
	IzDT5V4dfiPokAhayvVnFX0zO/YfIom6PEdpwZ7qZQQSlcR9drm0KNcS6AU6yxN3eEwNHgjZCGy2R
	4XKOJHhee6wdesR7cAOhSiWHdGh/ofUT/oa3CQ2rxHM+q9GseTqxXt+aD2KM3HAurl/mfVonFqWYK
	TgQ5Pc18/MNXWjjyMpg5lSi8G/xnL4vmrqxFcfJrlwWuTEU4PkwKvQrt9FxlvoLjzpcWshuSH1XdI
	bkB8/fMERyPZ01t+80VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqtCQ-0004CK-FT; Fri, 26 Jul 2019 05:55:26 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqtC7-0003dh-4K
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 05:55:09 +0000
Received: by mail-ed1-x544.google.com with SMTP id p15so52178730eds.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 22:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lnG0ZQlz/fGKq5v6vQxAtGdLaS+nXw5qYv3KR8QYN+0=;
 b=CoCLHPtYQ3OxMy3HeSGnc0jcUyCLQqGIq6/OB+ZhjWncKwDXhHpesrdSDLZyFztzyx
 /P3EOAxi+8FAPMgg5TphKhUES1IOP+r3Xcy6KTCaqMgdsweA181FJ0PmDQDvgjGhH5Dl
 RzKixPSzybD0yDW03ndhtHTK2XE5Z53mKbc2o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lnG0ZQlz/fGKq5v6vQxAtGdLaS+nXw5qYv3KR8QYN+0=;
 b=hKqBzdj4khB01lqq0M+R33MgYl09vtHi7Lz+fEO7JjKM4nEF1snuCft5vLiJ4ClHRO
 Fe7TYdL8PEn+u1nMb7UYRtzcPq8U7sOrdzpjO2bsoxz4Kz6t+UEwb+ZySoI5gZisT1GW
 JIAmads2qfu9JyBrcpbC3uyHpTA2PGONoPdEUKvXAGupgQtoBA1nFpCcalFz70ym0NGY
 BBvsk2XGVf6gHRwXX1rI9dD2bKvAdQduuYrBbRafn29CAieKodw9bTcoPg3hfsWyUF68
 IErA9IwcDkdTvl18u6hG9NaVX/j6WciLVc3dGS5o4H9Mj4rTMQHpHpZXnXH7NIu2G/zz
 ZZWQ==
X-Gm-Message-State: APjAAAUKb7mv23+tW1LpyN/EYg02JI2VqVoP2oeWM7AbVDmgauiOf1Vm
 pXRvD5gXWE22IEdZAfw03EuDPUhF8elWpQ==
X-Google-Smtp-Source: APXvYqyMA4IrHXHfcClNvBZjexm6k0qlVzPHgHegnLlhNfnqEpLuvppDk/5LqWXaZSAClQUK1K9fSw==
X-Received: by 2002:a50:987a:: with SMTP id h55mr82098258edb.108.1564120505283; 
 Thu, 25 Jul 2019 22:55:05 -0700 (PDT)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com.
 [209.85.128.47])
 by smtp.gmail.com with ESMTPSA id w27sm14476590edw.63.2019.07.25.22.55.05
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 22:55:05 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id g67so42481834wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 22:55:05 -0700 (PDT)
X-Received: by 2002:a7b:c7d8:: with SMTP id z24mr83414687wmk.10.1564120186538; 
 Thu, 25 Jul 2019 22:49:46 -0700 (PDT)
MIME-Version: 1.0
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-7-jungo.lin@mediatek.com>
 <20190710095429.GA181405@chromium.org>
 <1563424741.1212.212.camel@mtksdccf07>
 <CAAFQd5CXeQv74RtqDxYYLVEpsnFbsm0m-kUBDpY_AFmCBO0PyA@mail.gmail.com>
 <1563942689.1212.494.camel@mtksdccf07>
In-Reply-To: <1563942689.1212.494.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 26 Jul 2019 14:49:34 +0900
X-Gmail-Original-Message-ID: <CAAFQd5A8zW9s8cewmHnr9HFmrkxDnEqjrTiwLF2m8sKp0619hA@mail.gmail.com>
Message-ID: <CAAFQd5A8zW9s8cewmHnr9HFmrkxDnEqjrTiwLF2m8sKp0619hA@mail.gmail.com>
Subject: Re: [RFC,v3 6/9] media: platform: Add Mediatek ISP P1 V4L2 functions
To: Jungo Lin <jungo.lin@mediatek.com>, Hans Verkuil <hverkuil@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_225507_215604_8BE44631 
X-CRM114-Status: GOOD (  42.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <sean.cheng@mediatek.com>,
 =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?= <frederic.chen@mediatek.com>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <rynn.wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, Rob Herring <robh@kernel.org>,
 =?UTF-8?B?UnlhbiBZdSAo5L2Z5a2f5L+uKQ==?= <ryan.yu@mediatek.com>,
 =?UTF-8?B?RnJhbmtpZSBDaGl1ICjpgrHmloflh7Ep?= <frankie.chiu@mediatek.com>,
 ddavenport@chromium.org, Sj Huang <sj.huang@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 1:31 PM Jungo Lin <jungo.lin@mediatek.com> wrote:
>
> Hi, Tomasz:
>
> On Tue, 2019-07-23 at 19:21 +0900, Tomasz Figa wrote:
> > Hi Jungo,
> >
> > On Thu, Jul 18, 2019 at 1:39 PM Jungo Lin <jungo.lin@mediatek.com> wrote:
> > >
> > > Hi, Tomasz:
> > >
> > > On Wed, 2019-07-10 at 18:54 +0900, Tomasz Figa wrote:
> > > > Hi Jungo,
> > > >
> > > > On Tue, Jun 11, 2019 at 11:53:41AM +0800, Jungo Lin wrote:
> > [snip]
> > > > > +static void mtk_cam_req_try_isp_queue(struct mtk_cam_dev *cam_dev,
> > > > > +                                 struct media_request *new_req)
> > > > > +{
> > > > > +   struct mtk_cam_dev_request *req, *req_safe, *cam_dev_req;
> > > > > +   struct device *dev = &cam_dev->pdev->dev;
> > > > > +
> > > > > +   dev_dbg(dev, "%s new req:%d", __func__, !new_req);
> > > > > +
> > > > > +   if (!cam_dev->streaming) {
> > > > > +           cam_dev_req = mtk_cam_req_to_dev_req(new_req);
> > > > > +           spin_lock(&cam_dev->req_lock);
> > > > > +           list_add_tail(&cam_dev_req->list, &cam_dev->req_list);
> > > > > +           spin_unlock(&cam_dev->req_lock);
> > > > > +           dev_dbg(dev, "%s: stream off, no ISP enqueue\n", __func__);
> > > > > +           return;
> > > > > +   }
> > > > > +
> > > > > +   /* Normal enqueue flow */
> > > > > +   if (new_req) {
> > > > > +           mtk_isp_req_enqueue(dev, new_req);
> > > > > +           return;
> > > > > +   }
> > > > > +
> > > > > +   /* Flush all media requests wehen first stream on */
> > > > > +   list_for_each_entry_safe(req, req_safe, &cam_dev->req_list, list) {
> > > > > +           list_del(&req->list);
> > > > > +           mtk_isp_req_enqueue(dev, &req->req);
> > > > > +   }
> > > > > +}
> > > >
> > > > This will have to be redone, as per the other suggestions, but generally one
> > > > would have a function that tries to queue as much as possible from a list to
> > > > the hardware and another function that adds a request to the list and calls
> > > > the first function.
> > > >
> > >
> > > We revised this function as below.
> > > First to check the en-queue conditions:
> > > a. stream on
> > > b. The composer buffers in SCP are 3, so we only could has 3 jobs
> > > at the same time.
> > >
> > >
> > > Second, try to en-queue the frames in the pending job if possible and
> > > move them into running job list if possible.
> > >
> > > The request has been inserted into pending job in mtk_cam_req_validate
> > > which is used to validate media_request.
> >
> > Thanks for replying to each of the comments, that's very helpful.
> > Snipped out the parts that I agreed with.
> >
> > Please note that req_validate is not supposed to change any driver
> > state. It's only supposed to validate the request. req_queue is the
> > right callback to insert the request into some internal driver
> > bookkeeping structures.
> >
>
> Yes, in req_validate function, we don't change any driver state.
> Below is the function's implementation.
>
> a. Call vb2_request_validate(req) to verify media request.
> b. Update the buffer internal structure buffer.
> c. Insert the request into pending_job_list to prepare en-queue.
>

Adding to a list is changing driver state. The callback must not
modify anything else than the request itself.

Queuing to driver's list should happen in req_queue instead.

[snip]
> > >
> > > void mtk_cam_dev_req_try_queue(struct mtk_cam_dev *cam_dev)
> > > {
> > >         struct mtk_cam_dev_request *req, *req_prev;
> > >         struct list_head enqueue_job_list;
> > >         int buffer_cnt = atomic_read(&cam_dev->running_job_count);
> > >         unsigned long flags;
> > >
> > >         if (!cam_dev->streaming ||
> > >             buffer_cnt >= MTK_ISP_MAX_RUNNING_JOBS) {
> >
> > Do we have a guarantee that cam_dev->running_job_count doesn't
> > decrement between the atomic_read() above and this line?
> >
>
> Ok, we will use cam->pending_job_lock to protect
> cam_dev->running_job_count access. Below is the revised version.
>
> void mtk_cam_dev_req_try_queue(struct mtk_cam_dev *cam)
> {
>         struct mtk_cam_dev_request *req, *req_prev;
>         unsigned long flags;
>
>         if (!cam->streaming) {
>                 dev_dbg(cam->dev, "stream is off\n");
>                 return;
>         }
>
>         spin_lock_irqsave(&cam->pending_job_lock, flags);
>         if (atomic_read(&cam->running_job_count) >= MTK_ISP_MAX_RUNNING_JOBS) {

If we use a spin_lock to protect the counter, perhaps we don't need
the atomic type anymore?

>                 dev_dbg(cam->dev, "jobs are full\n");
>                 spin_unlock_irqrestore(&cam->pending_job_lock, flags);
>                 return;
>         }
>         list_for_each_entry_safe(req, req_prev, &cam->pending_job_list, list) {

Could we instead check the counter here and break if it's >=
MTK_ISP_MAX_RUNNING_JOBS?
Then we could increment it here too to simplify the code.

>                 list_del(&req->list);
>                 spin_lock_irqsave(&cam->running_job_lock, flags);
>                 list_add_tail(&req->list, &cam->running_job_list);
>                 mtk_isp_req_enqueue(cam, req);
>                 spin_unlock_irqrestore(&cam->running_job_lock, flags);
>                 if (atomic_inc_return(&cam->running_job_count) >=
>                         MTK_ISP_MAX_RUNNING_JOBS)
>                         break;

With the above suggestion, this if block would go away.

[snip]
> > >                 mtk_isp_req_enqueue(cam_dev, req);
> > >         }
> > > }
> > >
> > [snip]
> > > > > +   stride = DIV_ROUND_UP(stride * pixel_byte, 8);
> > > > > +
> > > > > +   if (pix_fmt == V4L2_PIX_FMT_MTISP_F10)
> > > > > +           stride = ALIGN(stride, 4);
> > > >
> > > > Is it expected that only the F10 format needs this alignment?
> > > >
> > >
> > > yes, if the pixel bits of image format is 10, the byte alignment of bpl
> > > should be 4. Otherwise, it is 8. We will revise this and add more
> > > comments.
> >
> > That means that the B10 format also needs the extra alignment, as
> > opposed to what the original code did, right?
> >
>
> Sorry for short code snippet.
> This alignment checking is only applied to F10, no B10.
> If you like to check the full function, you could check this in this
> link[1].
>
> static void cal_image_pix_mp(struct mtk_cam_dev *cam, unsigned int
> node_id,
>                              struct v4l2_pix_format_mplane *mp)
> {
>         unsigned int bpl, ppl;
>         unsigned int pixel_bits = get_pixel_bits(mp->pixelformat);
>         unsigned int width = mp->width;
>
>         if (node_id == MTK_CAM_P1_MAIN_STREAM_OUT) {
>                 /* bayer encoding format & 2 bytes alignment */
>                 bpl = ALIGN(DIV_ROUND_UP(width * pixel_bits, 8), 2);
>         } else if (node_id == MTK_CAM_P1_PACKED_BIN_OUT) {
>                 /*
>                  * The FULL-G encoding format
>                  * 1 G component per pixel
>                  * 1 R component per 4 pixel
>                  * 1 B component per 4 pixel
>                  * Total 4G/1R/1B in 4 pixel (pixel per line:ppl)
>                  */
>                 ppl = DIV_ROUND_UP(width * 6, 4);
>                 bpl = DIV_ROUND_UP(ppl * pixel_bits, 8);
>
>                 /* 4 bytes alignment for 10 bit & others are 8 bytes */
>                 if (pixel_bits == 10)
>                         bpl = ALIGN(bpl, 4);
>                 else
>                         bpl = ALIGN(bpl, 8);
>         }
>
> [1]
> https://crrev.com/c/1712885/2/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam.c#303
>

Got it, thanks!

[snip]
> > > > > +
> > > > > +static struct v4l2_subdev *
> > > > > +mtk_cam_cio_get_active_sensor(struct mtk_cam_dev *cam_dev)
> > > > > +{
> > > > > +   struct media_device *mdev = cam_dev->seninf->entity.graph_obj.mdev;
> > > > > +   struct media_entity *entity;
> > > > > +   struct device *dev = &cam_dev->pdev->dev;
> > > > > +   struct v4l2_subdev *sensor;
> > > >
> > > > This variable would be unitialized if there is no streaming sensor. Was
> > > > there no compiler warning generated for this?
> > > >
> > >
> > > No, there is no compiler warning.
> > > But, we will assign sensor to NULL to avoid unnecessary compiler warning
> > > with different compiler options.
> > >
> >
> > Thanks. It would be useful if you could check why the compiler you're
> > using doesn't show a warning here. We might be missing other
> > uninitialized variables.
> >
>
> We will feedback to your project team to check the possible reason about
> compiler warning issue.
>

Do you mean that it was the Clang toolchain used on Chromium OS (e.g.
emerge chromeos-kernel-4_19)?

[snip]
> > > > > +
> > > > > +   dev_dbg(dev, "%s: node:%d fd:%d idx:%d\n",
> > > > > +           __func__,
> > > > > +           node->id,
> > > > > +           buf->vbb.request_fd,
> > > > > +           buf->vbb.vb2_buf.index);
> > > > > +
> > > > > +   /* For request buffers en-queue, handled in mtk_cam_req_try_queue */
> > > > > +   if (vb->vb2_queue->uses_requests)
> > > > > +           return;
> > > >
> > > > I'd suggest removing non-request support from this driver. Even if we end up
> > > > with a need to provide compatibility for non-request mode, then it should be
> > > > built on top of the requests mode, so that the driver itself doesn't have to
> > > > deal with two modes.
> > > >
> > >
> > > The purpose of non-request function in this driver is needed by
> > > our camera middle-ware design. It needs 3A statistics buffers before
> > > image buffers en-queue. So we need to en-queue 3A statistics with
> > > non-request mode in this driver. After MW got the 3A statistics data, it
> > > will en-queue the images, tuning buffer and other meta buffers with
> > > request mode. Based on this requirement, do you have any suggestion?
> > > For upstream driver, should we only consider request mode?
> > >
> >
> > Where does that requirement come from? Why the timing of queuing of
> > the buffers to the driver is important?
> >
> > [snip]
>
> Basically, this requirement comes from our internal camera
> middle-ware/3A hal in user space. Since this is not generic requirement,
> we will follow your original suggestion to keep the request mode only
> and remove other non-request design in other files. For upstream driver,
> it should support request mode only.
>

Note that Chromium OS will use the "upstream driver" and we don't want
to diverge, so please make the userspace also use only requests. I
don't see a reason why there would be any need to submit any buffers
outside of a request.

[snip]
> > > > > +static void mtk_cam_vb2_buf_request_complete(struct vb2_buffer *vb)
> > > > > +{
> > > > > +   struct mtk_cam_dev *dev = vb2_get_drv_priv(vb->vb2_queue);
> > > > > +
> > > > > +   v4l2_ctrl_request_complete(vb->req_obj.req,
> > > > > +                              dev->v4l2_dev.ctrl_handler);
> > > >
> > > > This would end up being called multiple times, once for each video node.
> > > > Instead, this should be called explicitly by the driver when it completed
> > > > the request - perhaps in the frame completion handler?
> > > >
> > > > With that, we probably wouldn't even need this callback.
> > > >
> > >
> > > First, if we don't implement this callback function, we will receive
> > > kernel warning as below.
> > >
> > > https://elixir.bootlin.com/linux/latest/source/drivers/media/common/videobuf2/videobuf2-v4l2.c#L420
> > >
> > > Second, this function is only be called in __vb2_queue_cancel function.
> > > Moreover, we will remove cam_dev->v4l2_dev.ctrl_handler in next patch.
> > > So could we just implement dummy empty function?
> > >
> > >  * @buf_request_complete: a buffer that was never queued to the driver
> > > but is
> > >  *                      associated with a queued request was canceled.
> > >  *                      The driver will have to mark associated objects in the
> > >  *                      request as completed; required if requests are
> > >  *                      supported.
> > >
> >
> > Good catch, thanks.
> >
> > Sounds like we may indeed need to implement this callback. In
> > particular, we may need to remove the request that the buffer was
> > associated with from the driver queue and return the other buffers
> > associated to it with an error state. This should be similar to
> > handling a request failure.
> > [snip]
>
> Before calling this callback function, the VB2's stop_streaming has been
> called. Normally, we will return the buffers belonged to this vb2 queu
> with error state. On other hand, only if the state of request is
> MEDIA_REQUEST_STATE_QUEUED, the buf_request_complete will be called in
> __vb2_queue_cancel function. It hints this media request has been
> validated and inserted into our driver's pending_job_list or
> running_job_list. So we will call mtk_cam_dev_req_cleanup() remove these
> requests from driver's list when streaming is off. Since we have no
> v4l2_ctrl, do we need to do the above things which is already handled in
> mtk_cam_vb2_stop_streaming function? Maybe is this callback function
> only designed for v4l2_ctrl_request_complete usage?

Are you sure that this callback can be only called after
stop_streaming? Also wouldn't that be after stop_streaming only on 1
queue? The other queues could still remain streaming, but we still
have to return corresponding buffers I believe.

Hans, could you clarify what exactly this callback is supposed to do?

>
> static void mtk_cam_dev_req_cleanup(struct mtk_cam_dev *cam)
> {
>         struct mtk_cam_dev_request *req, *req_prev;
>         unsigned long flags;
>
>         dev_dbg(cam->dev, "%s\n", __func__);
>
>         spin_lock_irqsave(&cam->pending_job_lock, flags);
>         list_for_each_entry_safe(req, req_prev, &cam->pending_job_list, list)
>                 list_del(&req->list);
>         spin_unlock_irqrestore(&cam->pending_job_lock, flags);
>
>         spin_lock_irqsave(&cam->running_job_lock, flags);
>         list_for_each_entry_safe(req, req_prev, &cam->running_job_list, list)
>                 list_del(&req->list);
>         spin_unlock_irqrestore(&cam->running_job_lock, flags);
> }
>
> static void mtk_cam_vb2_stop_streaming(struct vb2_queue *vq)
> {
>         struct mtk_cam_dev *cam = vb2_get_drv_priv(vq);
>         struct mtk_cam_video_device *node = mtk_cam_vbq_to_vdev(vq);
>         struct device *dev = cam->dev;
>
>         dev_dbg(dev, "%s node:%d count info:%d", __func__,
>                 node->id, atomic_read(&cam->stream_count));
>
>         mutex_lock(&cam->op_lock);
>         if (atomic_read(&cam->stream_count) == cam->enabled_count)
>                 if (v4l2_subdev_call(&cam->subdev, video, s_stream, 0))
>                         dev_err(dev, "failed to stop streaming\n");
>
>         mtk_cam_vb2_return_all_buffers(cam, node, VB2_BUF_STATE_ERROR);
>
>         /* Check the first node to stream-off */
>         if (!atomic_dec_and_test(&cam->stream_count)) {
>                 mutex_unlock(&cam->op_lock);
>                 return;
>         }
>         mutex_unlock(&cam->op_lock);
>
>         mtk_cam_dev_req_cleanup(cam);
>         media_pipeline_stop(&node->vdev.entity);
> }

[keeping the context for Hans]

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
